# APITestingKarateFramework
# Author: Vijaya Prakash Balan



Karate was released as an open-source tool by Intuit. 
The tool is designed to be used for automated API testing and has all the required features to make API testing.



Dependencies:

Make sure you have Java (preferably java 8) & Maven installed and path configure on your system, if not follow the vendor instructions for installing them on your operating system.

Running Tests:
After checking out the code build the project using :

Run command(inside the project folder where pom.xml file is located) : mvn clean install -DskipTests ( make sure maven is installed and configure) to install the dependent jars.

Running tests using eclipse :

1. run junit test from your IDE eclipse or intellij.

Running tests using command line( can be used when wish to run the tests in CI/CD) :

1. Go to project folder(which has pom file)
2. run maven command : mvn test

UseCase:
1. Search User -> ApiTesting.feature is used to search the user 
2. Search for the posts written by the user -> post.feature used to get all the post written by the user
3. For each post, fetch the comments and validate if the emails in the comment
section are in the proper format. -> comment.feature is used to get all the comment and validate the email formate.

karate-config.js
We can pass the environment to execute the test cases by using  the below and also you can change the base url of the application in the config.</br>
-Denv=dev </br>
-Denv=pre-prod </br>
-Denv=prod </br>

TestRunner.java
Runner file to execute the Feature file and used generate the report.

Report:
Cucumber html report will be generated in the target folder
