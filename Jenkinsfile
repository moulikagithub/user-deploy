pipeline {
    agent {
        node {
            label 'agent-1'
        }      
    }
     environment { 
             packageVersion = ''
             nexusurl = '172.31.11.253:8081'
     }
   
    options {
                timeout(time: 1, unit: 'HOURS')
                disableConcurrentBuilds()
                ansiColor('xterm') 
            }
    parameters {
        string(name: 'version', defaultValue: '', description: 'What is version')
        string(name: 'environment', defaultValue: 'dev', description: 'What is environment?')
        //booleanParam(name: 'Destroy', defaultValue: 'false', description: 'What is Destroy?')
        //booleanParam(name: 'Create', defaultValue: 'false', description: 'What is Create?')

    }   
    // build
    stages{
        stage('print version') {
            steps {
                sh """
                    echo "version is :${params.version}"
                    echo "environment is :${params.environment}"
                """
            }
        }
        stage('init') {
            steps {
                sh """
                    cd terraform
                    terraform init -backend-config=${params.environment}/backend.tf -reconfigure
                """
            }
        }
        stage('plan') {
             //when{
                //expression{
                    //params.Create
                //}
            //}
            steps {
                sh """
                    cd terraform
                    terraform plan -var-file=${params.environment}/${params.environment}.tfvars -var="app_version=${params.version}"
                """
            }
        }
        stage('apply') {
            // when{
                //expression{
                   // params.Create
                //}
            //}
            steps {
                sh """
                    cd terraform
                    terraform apply -var-file=${params.environment}/${params.environment}.tfvars -var="app_version=${params.version}" -auto-approve
                """
            }
        }
        
    }
    // post build
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        failure { 
            echo 'runs when their is failure'
        }
        success { 
            echo 'runs when success!'
        }
    }
}


     