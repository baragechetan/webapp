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
		
	stage ('Copy to DockerFile directory') {

            steps {
			sh 'cp /root/.jenkins/workspace/active-bond-war/target/*.war .'
                }
            
        }
	stage ('Create Image') {

            steps {
                
                    sh 'docker build -t chetanb1011/tomcatimg .'
                }
        }
		
	stage ('Push on Docker HUB') {

            steps {
                
                    sh 'docker push chetanb1011/tomcatimg'
                }
            
        }
		
		
    }
}
