<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_A_Notes_Error</fullName>
        <ccEmails>support@isyscm.com</ccEmails>
        <description>Send A Notes Error</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesA_ErrorChangedfrom1to2</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_A_Notes_Error</fullName>
        <description>Send Email A Notes Error</description>
        <protected>false</protected>
        <recipients>
            <recipient>isysadmin@isyscm.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesA_ErrorChangedfrom1to3</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_A_Notes_Error2_to_3</fullName>
        <description>Send Email A Notes Error2 to 3</description>
        <protected>false</protected>
        <recipients>
            <recipient>isysadmin@isyscm.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesA_ErrorChangedfrom2to3</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_A_Notes_Error_3_to_3</fullName>
        <description>Send Email A Notes Error 3 to 3</description>
        <protected>false</protected>
        <recipients>
            <recipient>isysadmin@isyscm.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesA_ErrorChangedfrom3to3</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_A_Notes_Error_Not_from_1_2_or_3</fullName>
        <description>Send Email A Notes Error Not from 1,2 or 3</description>
        <protected>false</protected>
        <recipients>
            <recipient>isysadmin@isyscm.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesA_ErrorChangedNot12or3</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_B_Notes_Error</fullName>
        <ccEmails>support@isyscm.com</ccEmails>
        <description>Send Email B Notes Error</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/NotesB_ErrorChangedfrom1to3</template>
    </alerts>
    <fieldUpdates>
        <fullName>A_Approve_Populate_Date_Time</fullName>
        <field>A_Note_Approval_Date_Time__c</field>
        <formula>Now()</formula>
        <name>A - Approve Populate Date Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Completed</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Completed</literalValue>
        <name>Approval Status = Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_In_Process</fullName>
        <field>Approval_Status__c</field>
        <literalValue>In Process</literalValue>
        <name>Approval Status = In Process</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Pending_A_Approval</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending A Approval</literalValue>
        <name>Approval Status = Pending A Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Pending_B_Approval</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending B Approval</literalValue>
        <name>Approval Status = Pending B Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Pending_Dist_Approval</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending Distribution Approval</literalValue>
        <name>Approval Status = Pending Dist Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Pending_QA_Approval</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending QA Approval</literalValue>
        <name>Approval Status = Pending QA Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>B_Approve_Populate_Date_Time</fullName>
        <field>B_Note_Approval_Date_Time__c</field>
        <formula>Now()</formula>
        <name>B - Approve Populate Date Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_Submitted_to_True</fullName>
        <field>Submitted__c</field>
        <literalValue>1</literalValue>
        <name>Check Submitted to True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_date_update</fullName>
        <field>CloseDate</field>
        <formula>PRIORVALUE( CloseDate )</formula>
        <name>Close date update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>In_Review_No</fullName>
        <field>In_Review__c</field>
        <literalValue>No</literalValue>
        <name>In Review = No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NullReportSubmissionDateTime</fullName>
        <field>ReportSubmissionDateTime__c</field>
        <name>NullReportSubmissionDateTime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Close_Date</fullName>
        <field>CloseDate</field>
        <formula>PRIORVALUE(CloseDate)</formula>
        <name>Opportunity Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_Approval_Update</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>Opportunity - Stage Approval Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_Approved</fullName>
        <field>StageName</field>
        <literalValue>Submitted</literalValue>
        <name>Opportunity Stage = Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_In_Process_Update</fullName>
        <description>To revert back to In Process from Submitted on Rejection from Approver</description>
        <field>StageName</field>
        <literalValue>In Process</literalValue>
        <name>Opportunity - Stage In Process_Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_Submitted</fullName>
        <field>StageName</field>
        <literalValue>Submitted</literalValue>
        <name>Opportunity Stage = Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_Submitted_Update</fullName>
        <field>StageName</field>
        <literalValue>Submitted</literalValue>
        <name>Opportunity - Stage Submitted Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Amount_Update</fullName>
        <field>Amount</field>
        <formula>Report_Total_Amount_Transfer_Field__c</formula>
        <name>Opty - Amount Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Approved_Update</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>Opty - Approved Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Completed_Update</fullName>
        <field>StageName</field>
        <literalValue>Completed</literalValue>
        <name>Opty - Completed Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Field_Note_A_Aprpoval_Update</fullName>
        <field>A_Notes_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Opty - Field Note A Appoval Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Field_Note_B_Appoval_Update</fullName>
        <field>B_Notes_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Opty - Field Note B Appoval Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Field_Update_to_Submitted</fullName>
        <field>StageName</field>
        <literalValue>Submitted</literalValue>
        <name>Opty - Field Update to Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_In_Process_Field_Update</fullName>
        <field>StageName</field>
        <literalValue>In Process</literalValue>
        <name>Opty - In Process Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Merge_Approval_Update</fullName>
        <field>Report_Merge_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Opty - Merge Approval Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Opportunity_Name_Update</fullName>
        <field>Name</field>
        <formula>Employee__c + TEXT(Service_Date_Thru__c)</formula>
        <name>Opty - Opportunity Name Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_QA_Field_Update</fullName>
        <field>QA_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Opty - QA Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_10</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X9_Ancillary_Service</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_12</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Case_Note_Activity_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_4</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Closure_Report</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_5</fullName>
        <field>RecordTypeId</field>
        <lookupValue>AbbreviatedClosureReport</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_6</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X06_Standard_Uniform_Report</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_7</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Sentry_Initial</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_8</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Sentry_Progress</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_9</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Sentry_Closure</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_Initial</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X01_New_Standard_Initial_Report</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to Initial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_RT_Update_to_PRogress</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X02_New_Standard_Progress_Report</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - RT Update to Progress Report</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Record_Type_Set_11</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X11_Titan_Task_Assignment</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - Record Type Set - 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Record_Type_Set_3</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Abbreviated_Progress_Report</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Opty - Record Type Set - 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Report_Submit_Field_Update</fullName>
        <field>Report_Submission_Date__c</field>
        <formula>TODAY()</formula>
        <name>Opty - Report Submit Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Service_Date_From_Update_first_r</fullName>
        <field>Service_Date_From__c</field>
        <formula>Related_Case__r.Referral_Date__c</formula>
        <name>Opty - Service Date From Update (first r</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Service_Date_From_Update_not_fir</fullName>
        <field>Service_Date_From__c</field>
        <formula>Related_Case__r.Date_of_Last_Report__c +1</formula>
        <name>Opty - Service Date From Update (not fir</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Submit_Field_Update</fullName>
        <field>P_S_Target_Date__c</field>
        <formula>NOW()</formula>
        <name>Opty - Submit Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Update_to_Approved</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>Opty - Update to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opty_Update_to_In_Process</fullName>
        <field>StageName</field>
        <literalValue>In Process</literalValue>
        <name>Opty - Update to In Process</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Process_A_True</fullName>
        <field>Process_A__c</field>
        <formula>1</formula>
        <name>Process A True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Process_B_True</fullName>
        <field>Process_B__c</field>
        <formula>1</formula>
        <name>Process B True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFDC_Test</fullName>
        <field>CloseDate</field>
        <formula>PRIORVALUE( CloseDate )</formula>
        <name>SFDC Test</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Service_Date_From</fullName>
        <field>Service_Date_From__c</field>
        <formula>BLANKVALUE ( Related_Case__r.Date_of_Last_Report__c + 1,  Related_Case__r.Referral_Date__c )</formula>
        <name>Service Date From</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_First_Submission_Closed_Date</fullName>
        <field>First_Submission_Closed_Date__c</field>
        <formula>IF(ISNULL(First_Submission_Closed_Date__c),CloseDate,First_Submission_Closed_Date__c)</formula>
        <name>Set First Submission Closed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Initial_Submitted_Date</fullName>
        <field>CloseDate</field>
        <formula>IF(ISNULL(First_Submission_Closed_Date__c),CloseDate,First_Submission_Closed_Date__c)</formula>
        <name>Set Initial Submitted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateReportSubmissionDateTime</fullName>
        <field>ReportSubmissionDateTime__c</field>
        <formula>NOW()</formula>
        <name>UpdateReportSubmissionDateTime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Diagnosis</fullName>
        <field>Diagnosis__c</field>
        <formula>Related_Case__r.Current_Diagnosis__c</formula>
        <name>Set Opp Diagnosis</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_ODG</fullName>
        <field>ODG__c</field>
        <formula>Related_Case__r.ODG__c</formula>
        <name>Set ODG</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>datecheck_to_false</fullName>
        <field>Date_Checkbox__c</field>
        <literalValue>0</literalValue>
        <name>datecheck to false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>insertCRR</fullName>
        <field>CRR_Assigned__c</field>
        <formula>TEXT(Related_Case__r.CRR_Assigned__c)</formula>
        <name>insertCRR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>insertCRRSupervisor</fullName>
        <field>CRR_Supervisor__c</field>
        <formula>TEXT(Related_Case__r.CRR_Supervisor__c)</formula>
        <name>insertCRRSupervisor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>lastsyncdate_To_Today</fullName>
        <field>WISAFI__Last_Sync_Date__c</field>
        <formula>NOW()</formula>
        <name>lastsyncdate To Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>nullANoteApprovalDate</fullName>
        <field>A_Note_Approval_Date_Time__c</field>
        <name>nullANoteApprovalDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>nullBNoteApprovalDate</fullName>
        <field>B_Note_Approval_Date_Time__c</field>
        <name>nullBNoteApprovalDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>nullReportSubmissionDate</fullName>
        <field>Report_Submission_Date__c</field>
        <name>nullReportSubmissionDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>nullSubmissionCloseDate</fullName>
        <field>First_Submission_Closed_Date__c</field>
        <name>nullSubmissionCloseDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setActualCompletedDate</fullName>
        <field>ActualCompletedDate__c</field>
        <formula>InvoiceMailed__c</formula>
        <name>setActualCompletedDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setAmountLocked</fullName>
        <field>Amount_Locked__c</field>
        <literalValue>1</literalValue>
        <name>setAmountLocked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setOppQBServiceItem</fullName>
        <field>QBServiceItem__c</field>
        <formula>TEXT( Related_Case__r.QB_Service_Item__c)</formula>
        <name>setOppQBServiceItem</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setOpportunityJurisdiction</fullName>
        <field>QBJurisdiction__c</field>
        <formula>TEXT(Related_Case__r.Jurisdiction__c)</formula>
        <name>setOpportunityJurisdiction</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setPayrollSubDate</fullName>
        <field>PayrollSubmissionDate__c</field>
        <formula>TODAY()</formula>
        <name>setPayrollSubDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>uncheckANotesApproved</fullName>
        <field>A_Notes_Approved__c</field>
        <literalValue>0</literalValue>
        <name>uncheckANotesApproved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>uncheckAmountLocked</fullName>
        <field>Amount_Locked__c</field>
        <literalValue>0</literalValue>
        <name>uncheckAmountLocked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>uncheckSubmitted</fullName>
        <field>Submitted__c</field>
        <literalValue>0</literalValue>
        <name>uncheckSubmitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Approval Status %3D Completed</fullName>
        <actions>
            <name>Approval_Status_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Approval Status %3D Pending A Approval</fullName>
        <actions>
            <name>Approval_Status_Pending_A_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Approval Status %3D Pending B Approval</fullName>
        <actions>
            <name>Approval_Status_Pending_B_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.A_Notes_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.B_Notes_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QA_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Report_Merge_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Approval Status %3D Pending Dist Approval</fullName>
        <actions>
            <name>Approval_Status_Pending_Dist_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.A_Notes_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.B_Notes_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QA_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Report_Merge_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Approval Status %3D Pending QA Approval</fullName>
        <actions>
            <name>Approval_Status_Pending_QA_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.A_Notes_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.B_Notes_Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QA_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Report_Merge_Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Error Process A 1 to 2</fullName>
        <actions>
            <name>Send_A_Notes_Error</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>When Sync Error Occurs, send out email.</description>
        <formula>AND(Process_A__c = 2, PRIORVALUE(Process_A__c) = 1)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Error Process B 1 to 2</fullName>
        <actions>
            <name>Send_Email_B_Notes_Error</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>When Sync Error Occurs, send out email.</description>
        <formula>AND(Process_B__c = 2, PRIORVALUE(Process_B__c) = 1)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ErrorProcessA 1 to 3</fullName>
        <actions>
            <name>Send_Email_A_Notes_Error</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(Process_A__c = 3, PRIORVALUE(Process_A__c) = 1)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ErrorProcessA 2 to 3</fullName>
        <actions>
            <name>Send_Email_A_Notes_Error2_to_3</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(Process_A__c = 3, PRIORVALUE(Process_A__c) = 2)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ErrorProcessA 3 to 3</fullName>
        <actions>
            <name>Send_Email_A_Notes_Error_3_to_3</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND(Process_A__c = 3, PRIORVALUE(Process_A__c) = 3)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ErrorProcessA Not From 1%2C2 or 3 to 3</fullName>
        <actions>
            <name>Send_Email_A_Notes_Error_Not_from_1_2_or_3</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(Process_A__c = 3, NOT(PRIORVALUE(Process_A__c) = 1),NOT(PRIORVALUE(Process_A__c) = 2),NOT(PRIORVALUE(Process_A__c) = 3))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Populate Opportunity Name</fullName>
        <actions>
            <name>Opty_Opportunity_Name_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Populate with Amount</fullName>
        <actions>
            <name>Opty_Amount_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 1</fullName>
        <actions>
            <name>Opty_RT_Update_to_Initial</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>01-New Standard Initial Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 10</fullName>
        <actions>
            <name>Opty_RT_Update_to_10</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>10-Ancillary Service</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 11</fullName>
        <actions>
            <name>Opty_Record_Type_Set_11</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>11-Titan Task Assignment Report</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 12</fullName>
        <actions>
            <name>Opty_RT_Update_to_12</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>Case Note Activity Only</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 2</fullName>
        <actions>
            <name>Opty_RT_Update_to_PRogress</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>02-New Standard Progress Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 3</fullName>
        <actions>
            <name>Opty_Record_Type_Set_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>03-Standard Abbreviated Progress Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 4</fullName>
        <actions>
            <name>Opty_RT_Update_to_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>04-Standard Closure Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 5</fullName>
        <actions>
            <name>Opty_RT_Update_to_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>05-Standard Abbreviated Closure Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 6</fullName>
        <actions>
            <name>Opty_RT_Update_to_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>06-Standard Uniform Report</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 7</fullName>
        <actions>
            <name>Opty_RT_Update_to_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>07-Sentry Initial</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 8</fullName>
        <actions>
            <name>Opty_RT_Update_to_8</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>08-Sentry Progress</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Record Type Set - 9</fullName>
        <actions>
            <name>Opty_RT_Update_to_9</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Record Type Landing Page</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>09-Sentry Closure</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Service Date From Update %28first report%29</fullName>
        <actions>
            <name>Opty_Service_Date_From_Update_first_r</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.No_of_Open_Reports__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opty - Service Date From Update %28not first report%29</fullName>
        <actions>
            <name>Opty_Service_Date_From_Update_not_fir</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.No_of_Open_Reports__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Projected Closure Date Update</fullName>
        <actions>
            <name>SFDC_Test</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>When Stage is equal to &quot;Completed,&quot; ensures that the Project Closure Date is what was originally entered and not changed.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Date From</fullName>
        <actions>
            <name>Service_Date_From</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>**Reactivate when the &quot;CaseNoteRollupSync&quot; trigger has been updated**</description>
        <formula>NOT ( ISBLANK ( Related_Case__c ) )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Set Initial Submitted Date</fullName>
        <actions>
            <name>Set_Initial_Submitted_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Submitted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update%3A Opportunity Close Date</fullName>
        <actions>
            <name>Opportunity_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Added to Panel,Closed RFP Process,Successful,Submitted RFP,Completed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>WKF Notes A Approved</fullName>
        <actions>
            <name>Process_A_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF( 	AND( 		A_Notes_Approved__c == true,  		Account.RecordType.Name = &quot;Customer - Insurance&quot;, 		ISCHANGED(A_Note_Approval_Date_Time__c), 		NOT( 		$Profile.Name ==&apos;Custom - Integration User&apos; 		) 	),true, 	AND(  	A_Notes_Approved__c == true,  	Account.RecordType.Name = &quot;Customer - Insurance&quot;, 	OR( 		ISNULL(Process_A__c),Process_A__c!=2 		),  	NOT( 		$Profile.Name ==&apos;Custom - Integration User&apos; 		), 	OR( 		ISCHANGED( A_Notes_Approved__c ),ISNEW() 	  ) 	) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WKF Notes B Approved</fullName>
        <actions>
            <name>Process_B_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  B_Notes_Approved__c == true, OR(ISNULL(Process_B__c),Process_B__c!=2), Account.RecordType.Name = &quot;Customer - Insurance&quot;,  NOT($Profile.Name ==&apos;Custom - Integration User&apos;), OR(ISCHANGED(B_Notes_Approved__c),ISNEW()) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>lastsyncdate to today</fullName>
        <actions>
            <name>datecheck_to_false</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>lastsyncdate_To_Today</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Date_Checkbox__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>populateCRR</fullName>
        <actions>
            <name>insertCRR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISBLANK(CRR_Assigned__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>populateCRRSuper</fullName>
        <actions>
            <name>insertCRRSupervisor</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISBLANK(CRR_Supervisor__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>setActualCompletedDate</fullName>
        <actions>
            <name>setActualCompletedDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(StageName, &quot;Completed&quot;) &amp;&amp;
ActualCompletedDate__c &lt;&gt; InvoiceMailed__c</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>setJurisdictionServiceItem</fullName>
        <actions>
            <name>setOppQBServiceItem</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Amount_Locked__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
