<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>QB_Username_Default</fullName>
        <field>QB_Username__c</field>
        <formula>LastName + &apos;, &apos; + FirstName</formula>
        <name>QB Username Default</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>QB Username Default</fullName>
        <actions>
            <name>QB_Username_Default</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISBLANK(QB_Username__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
