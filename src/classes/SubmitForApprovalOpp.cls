public with sharing class SubmitForApprovalOpp {
    
    private Opportunity opp {get;set;}
    private List<Case_Note_Entry__c> caseNoteEntries {get;set;}
    
    private List<Appointment_Visit__c> appointmentVisits {get;set;}
    public Boolean appointmentError {get;set;}
    
    public Boolean hasErrors {get;set;}
    private ID pendingInfoBillingCodeID{get;set;}
    
    public Set<Id> billcodeCNSet {get;set;}
    
    public List<String> exemptRecordTypeList = new List<String>{'Abbreviated_Progress_Report', 'AbbreviatedClosureReport', 'Case_Note_Activity_Only', 'X9_Ancillary_Service'};
    
    public SubmitForApprovalOpp(ApexPages.StandardController std){
        opp = (Opportunity)std.getRecord();
        hasErrors = false;
        appointmentError = false;
        
        //validateAppointments();
        

        //Get the Case Note Auto Creation Billing Code
        //This Billing code represents the Pending info from Nurse and Cannot be submitted until filled out
        CaseNoteEntryAutomation__c csCNE = CaseNoteEntryAutomation__c.getOrgDefaults();
        pendingInfoBillingCodeID = csCNE.Billing_Code_ID__c;

        checkForErrors();
    }
    
    private void checkForErrors(){

        queryCaseNoteEntries();
        
        //Updates 2/1/19. Gets billing codes from Case Note Entries in the Report.
        //Will be used to limit the amount of Billing codes returned
        billcodeCNSet = new Set<id>();
        for(Case_Note_Entry__c c: caseNoteEntries){
            billcodeCNSet.add(c.Billing_Code__c);
        }
        Map<String,String> codeSet = getUniqueBillingCodes();
        
        
        
        
        Set<Id> needsEntries = new Set<Id>();
        for(Case_Note_Entry__c cne : caseNoteEntries){

            if(codeSet.keySet().contains(CNE.Billing_Code__c) 
                && ((CNE.RelatedCommunicationHistories__c == null || CNE.RelatedCommunicationHistories__c.trim() == '') 
                    && (CNE.RelatedAttachments__c == null || CNE.RelatedAttachments__c.trim() == ''))){
                needsEntries.add(cne.Id);
            }
            if(cne.Billing_Code__c == pendingInfoBillingCodeID || (cne.Billing_Code__r.DefaultBillingCode__c != NULL && cne.Billing_Code__r.DefaultBillingCode__c == pendingInfoBillingCodeID)){
                needsEntries.add(cne.Id);
                
            }
        }
        
        if(needsEntries.size() > 0){
            hasErrors = true;
        }
    }
    
    
    
    private void submitForApproval(){
        Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
        req1.setComments('Submitting request for approval.');
        req1.setObjectId(opp.id);
        
        req1.setSubmitterId(UserInfo.getUserId()); 
        Approval.ProcessResult result = Approval.process(req1);
        System.debug('Submitted for Appproval');
    }
    
    
    private void queryCaseNoteEntries(){
        caseNoteEntries = [SELECT Id, Billing_Code__c,Billing_Code__r.DefaultBillingCode__c,RelatedCommunicationHistories__c, RelatedAttachments__c FROM Case_Note_Entry__c WHERE Report__c = :opp.Id];
    }


    public PageReference validateCNE(){
        System.debug('validateCNE');
        queryCaseNoteEntries();
        Map<String,String> codeSet = getUniqueBillingCodes();
        Set<Id> needsEntries = new Set<Id>();
        for(Case_Note_Entry__c cne : caseNoteEntries){
            if(codeSet.keySet().contains(CNE.Billing_Code__c) && ((CNE.RelatedCommunicationHistories__c == null || CNE.RelatedCommunicationHistories__c.trim() == '') && (CNE.RelatedAttachments__c == null || CNE.RelatedAttachments__c.trim() == ''))){
                needsEntries.add(cne.Id);
                System.debug('Added to entries');
            }
            if(cne.Billing_Code__c == pendingInfoBillingCodeID || (cne.Billing_Code__r.DefaultBillingCode__c != NULL && cne.Billing_Code__r.DefaultBillingCode__c == pendingInfoBillingCodeID)){needsEntries.add(cne.Id);}
        }
        
        if(needsEntries.size() > 0){
            hasErrors = true;
            System.debug('Hasd Errors');
            PageReference editPageRef = Page.editCaseNoteEntries;
            
            editPageRef.getParameters().put('strOppId',opp.Id);
            
            String allIds = '';
            
            for(Id i : needsEntries){
                allIds += i + ',';
            }
            
            allIds = allIds.subString(0,allIds.length() -1);
            
            editPageRef.getParameters().put('SelIds',allIds);
            editPageRef.getParameters().put('doValidation','true');
            return editPageRef;
        }
        
        else{
            try{
            submitForApproval();
            }
            catch(Exception e){
                
            }
            return new PageReference('/' + opp.Id);
        }
    }
    
    private Map<String,String> getUniqueBillingCodes(){
        Map<String,String> uniqueCodes = new Map<String,String>();
        for(Billing_Code__c bc : [SELECT Id,Name FROM BIlling_Code__c WHERE LinkCommunication__c = true AND Id in :billcodeCNSet])
            uniqueCodes.put(bc.Id,bc.Name);
        
        return uniqueCodes;
        
    }
    
    private list<Appointment_Visit__c> queryAppointmentVisits(){
        return [SELECT id, Case_Report_Opportunity__c, Case_Manager_Attended__c, Authorization_for_Telephonic_Follow_up__c, Authorization_for_Telephonic_Follow_up_p__c, Case_Report_Opportunity__r.QBServiceItem__c, 
                Case_Report_Opportunity__r.RecordTypeId FROM Appointment_Visit__c WHERE Case_Report_Opportunity__c = :opp.Id];
    }
    
    //Added 1/15/19 by Corrao Group
    //Prevents Case Submission of an Appointment with Case Manager Attended set to "No, Telephonic Follow Up"
    //and Authorization for Telephonic Follow Up is unchecked. 
    public void validateAppointments(){
          list<Appointment_Visit__c> appList = queryAppointmentVisits(); 
          updateApps(appList);
          //appList = queryAppointmentVisits();
        
            for(Appointment_Visit__c av: appList){
                String rt = Schema.SobjectType.Opportunity.getRecordTypeInfosById().get(av.Case_Report_Opportunity__r.RecordTypeId).getDeveloperName();
                //System.debug(rt);
                if(!exemptRecordTypeList.contains(rt)){
                //if(true){
                	if(av.Case_Manager_Attended__c == 'No, Telephonic Follow Up' && String.isEmpty(av.Authorization_for_Telephonic_Follow_up_p__c) == true){
                    	//System.debug('ERROR FOUND'); 
                    	appointmentError = true; 
                	} 
                }
            }
    }
    
    public PageReference updateApps(list<Appointment_Visit__c> appList){
        list<Appointment_Visit__c> updateList = new list<Appointment_Visit__c>();
        
        if(opp.QBServiceItem__c == 'MCM-Tele'){
            
            for(Appointment_Visit__c av: appList){
                    if(String.isEmpty(av.Authorization_for_Telephonic_Follow_up_p__c) == true){
                        av.Authorization_for_Telephonic_Follow_up_p__c = 'Yes';
                        updateList.add(av);
                    }
            }
            if(updateList.size()>0)
                update updateList;
        }
       
    return null;
    }
}