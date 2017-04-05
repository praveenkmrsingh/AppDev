<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Extend an Offer</fullName>
        <actions>
            <name>extendanoffer</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Picklist__c</field>
            <operation>equals</operation>
            <value>Extend an Offer</value>
        </criteriaItems>
        <description>Make an offer when a hiring manager changes the status of a Job Application to Extend Offer.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Rejection Letter</fullName>
        <actions>
            <name>sendrejectionletter</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Picklist__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>Send a rejection letter when a hiring manager changes the status of a job application to Rejected.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>extendanoffer</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Extend an Offer</subject>
    </tasks>
    <tasks>
        <fullName>sendrejectionletter</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Send Rejection Letter</subject>
    </tasks>
</Workflow>
