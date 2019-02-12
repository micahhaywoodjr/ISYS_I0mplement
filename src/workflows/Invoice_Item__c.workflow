<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_RUSH_Rate</fullName>
        <field>Rate__c</field>
        <formula>Case_Report__r.Rush_Professional_Rate__c</formula>
        <name>Set RUSH Rate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Rush Rate</fullName>
        <actions>
            <name>Set_RUSH_Rate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Invoice_Item__c.Service_Name__c</field>
            <operation>equals</operation>
            <value>RUSH-MCM-On Site</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
