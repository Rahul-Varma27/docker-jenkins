pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/rahul/Documents/Extractfile/apache-maven-3.9.6/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/docker-jenkins /home/rahul/Documents/Extractfile/apache-tomcat-9.0.85/webapps'
			}}
			stage('Docker build'){
		    steps {
			sh 'docker build -t rahul27rv/pipelineimage1 .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=container-pipeline rahul27rv/pipelineimage1 /bin/bash'
			}}	
}}
