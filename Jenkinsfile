pipeline {
    agent any
environment {
	PATH = "${PATH}:${getTerraformPath()}"
}
    stages {
        stage('Terraform intializing') {
            steps {
                sh "terraform init"
            }          
        }
    }
}
 
 def getTerraformPath() {
    def tfHome = tool name: 'terraform-1.1.8', type: 'terraform'
	return tfHome
    }
