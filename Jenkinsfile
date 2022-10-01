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
						}
		
                }
            
        }
		
		
    }
}


