<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Act_Region_Code_Update</fullName>
        <field>Region_Code__c</field>
        <formula>LEFT( BillingPostalCode, 3)</formula>
        <name>Act - Region Code Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SyncMe_To_True</fullName>
        <field>Sync_Me__c</field>
        <literalValue>1</literalValue>
        <name>SyncMe To True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Sync Me New</fullName>
        <actions>
            <name>SyncMe_To_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(RecordType.Name = &quot;Customer - Insurance&quot;,NOT($User.Username == &apos;integrationuser@isyscm.com&apos;))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Account Sync Me Update</fullName>
        <actions>
            <name>SyncMe_To_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(RecordType.Name = &quot;Customer - Insurance&quot;,Sync_Me__c   == false,  NOT($User.Username == &apos;integrationuser@isyscm.com&apos;),  OR( ISCHANGED( WISAFI__Sales_Rep__c ), ISCHANGED( Name ) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Act - Region Code Update</fullName>
        <actions>
            <name>Act_Region_Code_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.BillingPostalCode</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
