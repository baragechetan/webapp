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
								
								sh 'scp -o StrictHostKeyChecking=no /mnt/docker-demo/*.war ec2-user@54.202.159.228:/mnt/demowar'
						}
		
                }
            
        }
		
		
    }
}


