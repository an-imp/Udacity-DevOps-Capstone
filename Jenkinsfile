pipeline {
  agent any
  stages {
    stage('Lint HTML') {
        steps {
            sh 'tidy -q -e *.html'
        }
    }

    stage('Build Docker Green Image') {
        steps {
            script{
                greenDockerImage = docker.build "buyifly/udacity-devops-capstone"
            }
        }
    }

	stage('Push Green Image To Dockerhub') {
   	    steps {
            script{
                docker.withRegistry('', registryCredential){
                    greenDockerImage.push()
                }
            }
        }
    }

    stage('Create k8s cluster') {
	    steps {
            withAWS(credentials: 'aws', region: 'us-west-2') {
                sh 'echo "Create k8s cluster..."'
                sh '''
                eksctl create cluster \
                --name capstone \
                --version 1.16 \
                --region us-west-2 \
                --nodegroup-name standard-workers \
                --node-type t2.micro \
                --nodes 2 \
                --nodes-min 1 \
                --nodes-max 3 \
                --managed
            '''
            }
	    }
    }
	    
	stage('Configure kubectl') {
	    steps {
            withAWS(credentials: 'aws', region: 'us-west-2') {
                sh 'aws eks --region us-west-2 update-kubeconfig --name capstone' 
            }
        }
    }

    stage('Deploy green image') {
	    steps {
            withAWS(credentials: 'aws', region: 'us-west-2') {
                sh 'kubectl apply -f ./green_template/green.yml'
            }
	    }
	}

    stage('Create green service') {
	    steps {
            withAWS(credentials: 'aws', region: 'us-west-2') {
                sh 'kubectl apply -f ./green_template/green_service.yml'
            }
	    }
	}

    stage('Clean Up image'){
        steps { 
            sh "docker rmi buyifly/udacity-devops-capstone:latest" 
        }
    }
  }

  environment {
    registryCredential = 'dockerhub'
    greenDockerImage = '' 
    blueDockerImage = ''
  }
}