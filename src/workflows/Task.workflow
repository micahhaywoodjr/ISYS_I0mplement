<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Case_Note_Entry_Creation_Failed</fullName>
        <description>Case Note Entry Creation Failed</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Admin_Staff_Templates/Case_Note_Entry_Creation_Failed</template>
    </alerts>
    <rules>
        <fullName>Case Note Entry Create Failed</fullName>
        <actions>
            <name>Case_Note_Entry_Creation_Failed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Error_Case_Note_Entry_Creation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Notification when Case Note Entry auto creation fails.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
