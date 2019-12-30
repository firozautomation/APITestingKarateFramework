Feature: validations for the comments for the post made by a specific user

Background: 
    * configure headers = { Accept: 'application/json' }
    
@apiTest
Scenario Outline: Validate the Comments post by the user
Given url url + "users?username=<username>"
When method get
Then status 200
* def userid = response[0].id
* print userid
Given url url + "posts?userId="+ userid
When method get
Then status 200
* print response.length
* def posts = call read('classpath:com/apitesting/APITestingKarateFramework/features/post.feature') response

Examples:
|username|
|Samantha|