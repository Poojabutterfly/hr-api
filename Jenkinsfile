pipeline{
    agent any
    stages{
         stage ("Git checkout"){
            steps{
            git url:"https://github.com/Poojabutterfly/Webtech-multipipeline.git",branch:"main"
            }
         }
         stage ("Maven build"){
            steps{
            sh "mvn clean package"
            }
         }
         stage ("dev deploy"){
            when{
                branch "dev"
            } 
    
           steps{
            echo "deploying to dev environment"
            }
         }
         stage ("qa deploy"){
            when{
                branch "qa"
            } 
               
            steps{
            echo "deploying to qa environment"
            }
         }
         stage ("prod deploy"){
            when{
                branch "main"
            } 
               
            steps{
            echo "deploying to prod environment"
            }
         }
    }
}