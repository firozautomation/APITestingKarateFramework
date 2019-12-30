Feature: verify the posts for the user

Scenario: verify the post from the user
* def postId = eval('__arg.id')
* print "Post Id-------->" + postId
Given url url+"comments?postId="+postId
When method get
Then status 200
* print response.length
* def comments = call read('classpath:com/apitesting/APITestingKarateFramework/features/comment.feature') response
