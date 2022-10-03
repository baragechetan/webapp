pipeline {
    agent any
    stages {
        stage ('Compile Stage') {
            steps {
                    sh 'mvn clean compile'
            }       
        }
        stage ('Testing Stage') {
            steps {
                    sh 'mvn test'
            }   
        }
        stage ('Install Stage') {
            steps {   
                    sh 'mvn install'
            }   
        }		
		stage ('Depoly_on_dev1') {
			steps {       	
					sh 'scp /root/.jenkins/workspace/active-bond-war/target/*.war dev@10.0.2.90:/mnt/demowar'
					sh 'ssh dev@10.0.2.90 sudo docker pull tomcat'
					sh 'ssh dev@10.0.2.90 sudo docker run -itd -v /mnt/demowar:/usr/local/tomcat/webapps -p 8081-8090:8080 tomcat'						
		
            }  

		stage ('Depoly_on_dev2') {
			steps {       	
					sh 'scp /root/.jenkins/workspace/active-bond-war/target/*.war dev@10.0.3.172:/mnt/demowar'
					sh 'ssh dev@10.0.3.172 sudo docker pull tomcat'
					sh 'ssh dev@10.0.3.172 sudo docker run -itd -v /mnt/demowar:/usr/local/tomcat/webapps -p 8081-8090:8080 tomcat'						
		
            }  
        }	
    }
}
