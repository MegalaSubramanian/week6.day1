Feature: Lead Editing functonality

	Background: 
	Given Open the chrome browser
	And Load the application URL 'http://leaftaps.com/opentaps/'
	Given Enter the username as "DemoSalesManager"
	And Enter the password as "crmsfa"
	And Click on Login button
	And Click CRM link
	And Click on Leads link

Scenario Outline: Edit lead scenario
Given Click on Find Leads button
And Click on the phone tab
And Enter the phone number as <phonenumber>
And Click on Find the Leads button 
And Click on the Lead ID from the result
And Click on the Edit button
And Change the Company name as <company>
And Click on Create Lead button

Examples: 
|phonenumber|company|
|99|'TCS'|