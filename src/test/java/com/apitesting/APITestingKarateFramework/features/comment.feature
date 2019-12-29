Feature: verify the email address for each comments posted for the user

Scenario: verify the email address for each comments posted for the user
#* print response.id
* def commentId = eval('__arg.id')
* print "Comment Id----->" + commentId
Given url url+"comments?id="+commentId
When method get
Then status 200
* def email = response[0].email
* print email
* match response[0].email == '#regex [A-Za-z0-9+_.-]+@(.+)'