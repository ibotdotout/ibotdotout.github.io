---
layout: post
title: Continuos Integrations
tags: CI
permalink: CI
---
# [Drone.io](https://drone.io) - Simple CI Server
## Private Configuration:
### Can run shell command
1. upload your configuration into gist with secret
2. get url of your raw configuration
3. add your configuration url in "Environment Variable"

  ```sh
  # Example
  CONFIG_URL="<your_configuration_url>"
  ```
4. in "Commands" download your configurations via wget without display result

  ```sh
  #!/bin/sh
  wget $CONFIG_URL -O <config_name> &> /dev/null
  ```

### Keep Variables in Environment

```sh
# Example
#!/bin/sh
export CLIENT_ID=<your id>
export TAGS=<your tags>
```

```python
#!/usr/bin/env python
import os
client_id = os.environ.get('CLIENT_ID',<default value>)
tags = os.environ.get('TAGS',<default value>)
```

### Dynamic Solution

```python
#!/usr/bin/env python
import os

# Configuration from Environment Variables if can't load config.ini
# you can make you own configuration from config.ini.sample

if os.path.isfile("config.ini"):
    import configparser
    config = configparser.ConfigParser()
    config.read('config.ini')
    client_id = config.get('DEFAULT', 'client_id')
else:
    client_id = os.environ.get('CLIENT_ID', <default value>)
```


## References:
1. [Drone.io Quickstart](http://docs.drone.io/quickstart.html)
2. [Drone.io Building Python Projects](http://docs.drone.io/python.html)
3. [Hosting Your Open Source Project on Heroku with Private Configuration](http://buddylindsey.com/hosting-your-open-source-project-on-heroku-with-private-configuration/)
4. [How to hide connection string, user name, pw when using source control?](http://stackoverflow.com/questions/3176918/how-to-hide-connection-string-user-name-pw-when-using-source-control)



# [Jenkins-CI](http://jenkins-ci.org) - Extendable CI Server

## Install Jenkins::
### Debian
  ```sh
  # Don't use only apt-get install jenkins that old version
  $ wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
  $ sudo vim /etc/apt/sources.list
  # add the following entry
  # deb http://pkg.jenkins-ci.org/debian binary/
  $ sudo apt-get update
  $ sudo apt-get install jenkins
  ```

### OSX
  ```sh
  brew update
  brew install jenkins
  ```
### Allow others to access jenkins
Original From [Setting up an Apache Proxy for port 80 -> 8080](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu) but it use old version of apache2

  ```sh
    $ sudo apt-get install apache2
    $ sudo a2enmod proxy
    $ sudo a2enmod proxy_http
    $ sudo a2dissite 000-default.conf
  ```

  Create "jenfins.conf" in /etc/apache2/sites-available

  ```sh
  <VirtualHost *:80>
      ServerAdmin webmaster@localhost
      ServerName ci.company.com
      ServerAlias ci
      ProxyRequests Off
      <Proxy *>
            Order deny,Alloww
            Allow from all
      </Proxy>
      ProxyPreserveHost on
      ProxyPass / http://Proxylocalhost:8080/
  </VirtualHost>
  ```

  ```sh
  $ sudo a2ensite jenkins
  $ sudo service apache2 restart
  ```


## Jenkins Job Workspace::
1. look jenkins home directory in Manage Jenkins > Configure System > Home directory  
2. In Home directory clicks Adanced... Buttons.  
3. look Workspace Root Directory. Normally it is "workspace".  
4. your job workspace is < jenkins home directory > /jobs/< your jobs > / < workspace >  



## Jenkins backup and Import Configure::
###Backup Job Configure  
  ```sh
  http://yourjenkinsserver/job/<project name>/config.xml
  ```

###Import Job Configure  
1. look jenkins home directory in Manage Jenkins > Configure System > Home directory  
2. go to < jenkins home directory >/jobs  
3. go to < your jobs directory >  
4. replace your backup config.xml with config.xml  
5. reload jenkins with  

  ```sh
  http://yourjenkinsserver/reload
  ```


## Jenkins Trigger via git hook::
### Setup Configure  
1. Install [Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)  
2. In Job Configure > Source Code Management > Select Git  
3. add your git repository url to Repository URL  
4. Select Poll SCM in Build Triggers and you can leave Schedule as blank  
5. Save Configure  

### [Git Hook to trigger Jenkins](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin#GitPlugin-Pushnotificationfromrepository)
1. If you use linux you have to install curl. That was installed osx.

  ```sh
  $ sudo apt-get install curl
  ```
2. You can trigger jenkins with this url

  ```sh
  http://yourserver/jenkins/git/notifyCommit?url=<URL of the Git repository>
  ```

3. You can trigger jenkins after git push by

  ```sh
  # git don't have post-push hook
  $ git push && curl http://yourserver/jenkins/git/notifyCommit?url=<URL of the Git repository>
  ```

4. You can use git alias to make short cmd by edit .git/config in your git repository

  ```sh
    [alias]
      trig-jenkins = !curl http://yourserver/jenkins/git/notifyCommit?url=<URL of the Git repository>
      push-wt = !git push && git trig-jenkins
  ```

  call your alias by

  ```sh
  $ git trig-jenkins
  $ git push-wt
  ```



## Jenkins with Python::
###Setup
1. Install [ShiningPanda Plugin](https://wiki.jenkins-ci.org/display/JENKINS/ShiningPanda+Plugin)  
2. In Manage Jenkins > Configure System > Python clicks "Python installations" button.  
3. Config your python environments  
4. Save  

###Configure Job to run with python
1. In Job Configure > Build > Add build step > {Python Builder, VirtualEnv Builder}  
2. Select your Python version  
3. Nature select shell  
4. In command add your run script  

  ```sh
  # example
  export LANG=en_US.UTF-8
  python setup.py develop
  nosetests --with-coverage --cover-erase --cover-package=core,bin --cover-html --with-xunit
  ```
5. (Optional) Publish Test Result Report 
  5.1 Use nosetests to generate xml result in xunit format  

    ```sh
     $ nosetests --with-xunit  # nosetests.xml is default name of xml
    ```
  5.2 Add post-build action > Publish JUnit test result report  
  5.3 Add "nosetests.xml" in Test report XMLs  
6. (Optional) Publish coverage.py HTML reports  
  6.1 Use nosetests to run coverage.py  

  ```sh
    $ nosetests --with-coveage --cover-html
  ```
  6.2 Add post-build action > Publish coverage.py HTML reports  
7. (Options) Publish your product  
  7.1 Add post-build action > Archive the artifacts  
  7.2 Add your file name  

## Start/Stop Jenkins that installed via Homebrew

```sh
# launchd start jenkins at login:
$ ln -sfv /usr/local/opt/jenkins/*.plist ~/Library/LaunchAgents
# start jenkins
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist
# stop jenkins:
$ launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist
```

### [Jekins Reset Password](https://gist.github.com/gmhawash/4043232)
1. Go to Jenkins Home Path     
    (debian) /var/lib/jenkins  
2. Edit config.xml  
3. Set <userSecurity> tag to false  
4. Delete <authorizationStrategy> and <securityRealm> tags  
5. Restart Jenkins  

```sh
$ sudo service jenkins restart
```

### Jenkins Plugins::
1. [Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
2. [ShiningPanda Plugin - Python support to
   Jenkkins](https://wiki.jenkins-ci.org/display/JENKINS/ShiningPanda+Plugin)
3. [Green Balls](https://wiki.jenkins-ci.org/display/JENKINS/Green+Balls)
4. [Build Pipeline Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Build+Pipeline+Plugin)
5. [Build Monitor Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Build+Monitor+Plugin)
6. [Jenkins Sounds plugin](https://wiki.jenkins-ci.org/display/JENKINS/Jenkins+Sounds+plugin)


## Jenkins References::
1. [Installing Jenkins on
   Ubuntu](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu)
2. [Jenkins Debian packages](http://pkg.jenkins-ci.org/debian/)
3. [Jenkins and
   Python](http://www.alexconrad.org/2011/10/jenkins-and-python.html)
4. [Jenkins :: สรุป plugin ยอดฮิตประจำเดือนพฤษภาคม ปี 2557](http://www.somkiat.cc/jenkins-popular-plugins/)
5. [Jenkins Setup on Os X server](http://oemden.com/?p=205)
