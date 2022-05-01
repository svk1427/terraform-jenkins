pipeline {
    agent any
environment {
	PATH = "${PATH}:${getTerraformPath()}"
}
    stages {
        stage('Terraform intializing') {
            steps {
		sh "sh returnStatus: true, script: 'terraform workspace new dev'"
                sh "terraform init -reconfigure"
		sh "terraform apply -var-file=dev.tfvars"
            }          
        }
    }
}
 
 def getTerraformPath() {
    def tfHome = tool name: 'terraform-1.1.8', type: 'terraform'
	return tfHome
    }
