Feature: verify the posts for the user

Scenario: verify the post from the user
#* print response.id
* def postId = eval('__arg.id')
* print "Post Id-------->" + postId
Given url url+"comments?postId="+postId
When method get
Then status 200
* print response.length
* def comments = call read('classpath:com/apitesting/APITestingKarateFramework/features/comment.feature') response

#* def email = response[0].email
#* print email
#* match response[0].email contains email