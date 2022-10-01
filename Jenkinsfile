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
								
								sh 'scp /root/.jenkins/workspace/active-bond-war/target ec2-user@54.202.159.228:/mnt/demowar'
						}
		
                }
            
        }
		
		
    }
}


