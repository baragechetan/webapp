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
		
		stage ('Depoly_on_dev') {

            steps {       
				sshagent(['deploy-user']) {
				
							sh 'scp -o StrictHostKeyChecking=no /root/.jenkins/workspace/active-bond-war/target/*.war dev@34.221.107.99:/mnt/demowar'
							sh 'ssh dev@34.221.107.99 sudo git clone https://github.com/baragechetan/dockerimgs.git /mnt/project'
							sh 'ssh dev@34.221.107.99 sudo docker build -t tomcatimg /mnt/project'
							sh 'ssh dev@34.221.107.99 sudo docker run -itd -v /mnt/demowar:/usr/local/tomcat/webapps -p 8081-8090:8080 tomcatimg'
							sh 'ssh dev@34.221.107.99 sudo rm -rf /mnt/project'
						}
		
                }
            
        }
		
		
    }
}
