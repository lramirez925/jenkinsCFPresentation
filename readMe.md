# Automate your tests

## Prerequisites. 
1. Install Docker on your machine
    * Follow the instructions here (To many systems to list here).
        * https://www.docker.com/community-edition#/download
2. Install Jenkins
    * Run the following command in terminal. 
        * ```docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v $HOME/jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean```
        * Or follow instructions here https://jenkins.io/doc/book/installing/

## To run these examples 
1. Fork this repo. 
2. Install as above
3. Go into Jenkins
4. Click the blueocean link 
5. Click New Pipeline
6. Choose yoour repository type.... aka github
7. Choose your organization if asked. 
8. Choose your repository... aka the forked repo
9. Click Create Pipeline


## How to use this repository
So organization of this repo is a little different. And I am doing that puposely. Every branch should have a PR and each PR is showing one way to accomplish a task in jenkins. I am hoping this allows you to use githubs great comparison features to see exactly what I had to do to run make the change. 

Please enjoy


