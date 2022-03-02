Feature: Lead Merging functonality

	Background: 
	Given Open the chrome browser
	And Load the application URL 'http://leaftaps.com/opentaps/'
	Given Enter the username as "DemoSalesManager"
	And Enter the password as "crmsfa"
	And Click on Login button
	And Click CRM link
	And Click on Leads link

Scenario Outline: Merge lead scenario
Given Click on Merge Leads button
And Click on the lookup against From Lead
And Enter the FirstName for Merge1 as <merge1>
And Click on the Search button 
And Save the Lead ID as "leadID" 
And Click on the Lead ID from the result
And Click on the lookup against To Lead
And Enter the FirstName for Merge1 as <merge2>
And Click on the Search button 
And Click on the Lead ID for Merge from the result
And Click on the Merge button
And Click ok on the alert
And Search for the saved "leadId"
Then Validate if text is displayed


Examples:
|merge1|merge2|
|'gopi'|'babu'|
