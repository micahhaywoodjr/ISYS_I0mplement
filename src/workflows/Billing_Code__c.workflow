<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>setLinkCommunication</fullName>
        <field>LinkCommunication__c</field>
        <literalValue>1</literalValue>
        <name>setLinkCommunication</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>setLinkCommunication</fullName>
        <actions>
            <name>setLinkCommunication</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISNULL(DefaultBillingCode__c)) &amp;&amp;
DefaultBillingCode__r.LinkCommunication__c = TRUE &amp;&amp;
LinkCommunication__c &lt;&gt; TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
