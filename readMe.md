# Automate your tests

## Prerequisites. 
1. Install Docker on your machine
    * Follow the instructions here (To many systems to list here).
        * https://www.docker.com/community-edition#/download
2. Install Jenkins
    * Run the following command in terminal. 
        * ```docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean```
        * Or follow instructions here https://jenkins.io/doc/book/installing/

