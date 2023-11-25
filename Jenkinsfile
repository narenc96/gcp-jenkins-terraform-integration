pipeline{
    agent any
    environment {
        CLOUDSDK_CORE_PROJECT='jenkins-gke-267'
        
  }
    stages{

        stage('Git checkout'){
            steps{
                git branch: 'main', credentialsId: '846a8a13-2a2c-40bf-9e6d-11448617ab3c', url: 'https://github.com/narenc96/gcp-jenkins-terraform-integration.git'
            }
        }
        stage('Initialize'){
            steps{

                sh 'gcloud auth application-default set-quota-project jenkins-gke-267'

                sh 'terraform init'
             
                    
                }
            
            }
        }
        stage('Plan'){
            steps{

                sh 'terraform plan'
            
            }
        }
        stage('apply'){
            steps{
                
                sh 'terraform apply -auto-approve'
            
            }
        }
    }
}
