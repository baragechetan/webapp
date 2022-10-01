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
        
		
		stage ('Copy to webapps') {

            steps {
              
		    sh 'cp /root/.jenkins/workspace/active-bond-war/target/*.war:/mnt/webserver/apache-tomcat-9.0.67/webapps'
                }
            
        }
		
		
    }
}
