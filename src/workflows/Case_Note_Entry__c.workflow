<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CNE_Adj_Expenses_Expenses</fullName>
        <field>Adj_Expenses__c</field>
        <formula>Expenses__c</formula>
        <name>CNE - Adj.Expenses = Expenses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Adj_Expenses_Populate</fullName>
        <field>Adj_Expenses__c</field>
        <formula>Expenses_Nurse__c</formula>
        <name>CNE - Adj Expenses Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Adj_Mileage_Populate</fullName>
        <field>Adj_Mileage__c</field>
        <formula>Mileage_Nurse__c</formula>
        <name>CNE - Adj Mileage Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Adj_Professional_Populate</fullName>
        <field>Adj_Professional_Hours__c</field>
        <formula>Professional_Hours_Nurse__c</formula>
        <name>CNE - Adj Professional Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Adj_Travel_Wait_Populate</fullName>
        <field>Adj_Travel_Wait_Hours__c</field>
        <formula>Travel_Wait_Hours_Nurse__c</formula>
        <name>CNE - Adj Travel Wait Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Expenses_Populate</fullName>
        <field>Expenses__c</field>
        <formula>Expenses_Nurse__c</formula>
        <name>CNE - Expenses Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_MileageNurse_Mileage</fullName>
        <field>Mileage__c</field>
        <formula>Mileage_Nurse__c</formula>
        <name>CNE-MileageNurse=Mileage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Mileage_Adjusted_Mileage</fullName>
        <field>Adj_Mileage__c</field>
        <formula>Mileage__c</formula>
        <name>CNE-Mileage=Adjusted Mileage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_ProfessionalHrs_AdjProfessionalHrs</fullName>
        <field>Adj_Professional_Hours__c</field>
        <formula>Professional_Hours__c</formula>
        <name>CNE-ProfessionalHrs=AdjProfessionalHrs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_TravelWait_AdjTravelWait</fullName>
        <field>Adj_Travel_Wait_Hours__c</field>
        <formula>Travel_Wait_Hours__c</formula>
        <name>CNE-TravelWait=AdjTravelWait</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CNE_Trvl_Wait_Nurse_TravelWait</fullName>
        <field>Travel_Wait_Hours__c</field>
        <formula>Travel_Wait_Hours_Nurse__c</formula>
        <name>CNE - Trvl/Wait(Nurse)=TravelWait</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CoveringNurseTRUE</fullName>
        <field>Covering_Nurse__c</field>
        <literalValue>1</literalValue>
        <name>CoveringNurseTRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PrimaryNurseTRUE</fullName>
        <field>Primary_Nurse__c</field>
        <literalValue>1</literalValue>
        <name>PrimaryNurseTRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProfessionalHrs_Nurse_ProfessionalHrs</fullName>
        <field>Professional_Hours__c</field>
        <formula>Professional_Hours_Nurse__c</formula>
        <name>ProfessionalHrs(Nurse)=ProfessionalHrs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rate_Calculation_Update</fullName>
        <field>Rate_Value__c</field>
        <formula>IF(Total_Hours__c &gt; 0, (Total_Cost__c  /  Total_Hours__c),
IF(Final_Mileage__c &gt;0,  Mileage_Total__c,
Final_Expenses__c
))</formula>
        <name>Rate Calculation Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>removeCoveringNurse</fullName>
        <field>Covering_Nurse__c</field>
        <literalValue>0</literalValue>
        <name>removeCoveringNurse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>removePrimaryNurse</fullName>
        <field>Primary_Nurse__c</field>
        <literalValue>0</literalValue>
        <name>removePrimaryNurse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updateBFieldFromNonProfNurseField</fullName>
        <field>Adj_Travel_Wait_Hours__c</field>
        <formula>Travel_Wait_Hours_Nurse__c</formula>
        <name>updateBFieldFromNonProfNurseField</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updateBFieldFromProfNurseField</fullName>
        <field>Adj_Professional_Hours__c</field>
        <formula>Professional_Hours_Nurse__c</formula>
        <name>updateBFieldFromProfNurseField</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updateExpensesBfromNurse</fullName>
        <field>Adj_Expenses__c</field>
        <formula>Expenses_Nurse__c</formula>
        <name>updateExpensesBfromNurse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updateMileageBfromNurse</fullName>
        <field>Adj_Mileage__c</field>
        <formula>Mileage_Nurse__c</formula>
        <name>updateMileageBfromNurse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Case Note Entry - Copy A to B Expenses %28Nurse%29</fullName>
        <actions>
            <name>CNE_Adj_Expenses_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CNE_Expenses_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = FALSE, 
Report__r.B_Notes_Approved__c = FALSE, 
Expenses_Nurse__c &gt;= 0.00, 
(OR( 
ISNEW(), 
ISCHANGED( Expenses_Nurse__c ) 
)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Expenses %28QA%29</fullName>
        <actions>
            <name>CNE_Adj_Expenses_Expenses</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
Expenses_Nurse__c  &gt;= 0.00,
Adj_Expenses__c  = PRIORVALUE( Expenses__c ),
ISCHANGED(Expenses__c),
NOT(ISCHANGED(Adj_Expenses__c)
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Mileage %28Nurse%29</fullName>
        <actions>
            <name>CNE_Adj_Mileage_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CNE_MileageNurse_Mileage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = FALSE, 
Report__r.B_Notes_Approved__c = FALSE, 
Mileage_Nurse__c &gt;= 0.0, 
(OR( 
ISNEW(), 
ISCHANGED( Mileage_Nurse__c ) 
)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Mileage %28QA%29</fullName>
        <actions>
            <name>CNE_Mileage_Adjusted_Mileage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
Mileage_Nurse__c &gt;= 0.00,
Adj_Mileage__c = PRIORVALUE( Mileage__c ),
ISCHANGED(Mileage__c),
NOT(ISCHANGED(Adj_Mileage__c)
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Professional Hours %28Nurse%29</fullName>
        <actions>
            <name>CNE_Adj_Professional_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProfessionalHrs_Nurse_ProfessionalHrs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = FALSE, 
Report__r.B_Notes_Approved__c = FALSE, 
OR( 
Professional_Hours_Nurse__c &lt;&gt; null, 
Professional_Hours_Nurse__c  &gt;=  0.0), 
(OR( 
ISNEW(), 
ISCHANGED( Professional_Hours_Nurse__c ) 
)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Professional Hours %28QA%29</fullName>
        <actions>
            <name>CNE_ProfessionalHrs_AdjProfessionalHrs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
Professional_Hours_Nurse__c  &gt;= 0.00,
 Adj_Professional_Hours__c = PRIORVALUE(Professional_Hours__c),
ISCHANGED(Professional_Hours__c),
NOT(ISCHANGED(Adj_Professional_Hours__c)
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Travel%2FWait Hours %28Nurse%29</fullName>
        <actions>
            <name>CNE_Adj_Travel_Wait_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CNE_Trvl_Wait_Nurse_TravelWait</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = FALSE, 
Report__r.B_Notes_Approved__c = FALSE, 
OR( 
Travel_Wait_Hours_Nurse__c &lt;&gt; null, 
Travel_Wait_Hours_Nurse__c &gt;= 0.0), 
(OR( 
ISNEW(), 
ISCHANGED( Travel_Wait_Hours_Nurse__c ) 
)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Copy A to B Travel%2FWait Hours %28QA%29</fullName>
        <actions>
            <name>CNE_TravelWait_AdjTravelWait</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
Travel_Wait_Hours__c &gt;= 0.00,
Adj_Travel_Wait_Hours__c = PRIORVALUE( Travel_Wait_Hours__c ),
ISCHANGED(Travel_Wait_Hours__c),
NOT(ISCHANGED(Adj_Travel_Wait_Hours__c)
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Note Entry - Record Type Update - To Read Only</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted</value>
        </criteriaItems>
        <description>To update record type to read only and no delete permission for nurse</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>removeCoveringNurse</fullName>
        <actions>
            <name>removeCoveringNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( CreatedBy.ProfileId = &apos;00e8000000189SB&apos;, CreatedById  =  Report__r.OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>removeCoveringPrimaryNurse</fullName>
        <actions>
            <name>removeCoveringNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>removePrimaryNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>CreatedBy.ProfileId &lt;&gt; &apos;00e8000000189SB&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>removePrimaryNurse</fullName>
        <actions>
            <name>removePrimaryNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( CreatedBy.ProfileId = &apos;00e8000000189SB&apos;, CreatedById  &lt;&gt;  Report__r.OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>updateCoveringNurse</fullName>
        <actions>
            <name>CoveringNurseTRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
CreatedById  &lt;&gt;  Report__r.OwnerId,
OR(
CreatedBy.ProfileId = &apos;00e80000001K8sZ&apos;,
CreatedBy.ProfileId = &apos;00e8000000189SB&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>updateExpensesBFieldfromNurseField</fullName>
        <actions>
            <name>updateExpensesBfromNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = TRUE, 
Report__r.B_Notes_Approved__c = FALSE)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>updateMileageBFieldfromNurseField</fullName>
        <actions>
            <name>updateMileageBfromNurse</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = TRUE, 
Report__r.B_Notes_Approved__c = FALSE)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>updateNonProfBFieldfromNurseField</fullName>
        <actions>
            <name>updateBFieldFromNonProfNurseField</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = TRUE, 
Report__r.B_Notes_Approved__c = FALSE)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>updatePrimaryNurse</fullName>
        <actions>
            <name>PrimaryNurseTRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
CreatedById  =  Report__r.OwnerId,
OR(
CreatedBy.ProfileId = &apos;00e80000001K8sZ&apos;,
CreatedBy.ProfileId = &apos;00e8000000189SB&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>updateProfBFieldfromNurseField</fullName>
        <actions>
            <name>updateBFieldFromProfNurseField</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Report__r.A_Notes_Approved__c = TRUE, 
Report__r.B_Notes_Approved__c = FALSE)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
