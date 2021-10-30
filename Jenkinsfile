node{

    stage('SCM Checkout')
    {
        git credentialsId: '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', url: 'https://github.com/adunola142/Employee-Management.git'
    }
    
    stage('Run Docker Compose File')
    {
        sh 'sudo docker-compose build'
        sh 'sudo docker-compose up -d'
    }
  stage('PUSH image to Docker Hub')
    {
      /* withCredentials([string(credentialsId: 'DockerHubPassword', variable: 'DHPWD')]) 
        {
            sh "docker login -u tura142 -p ${DHPWD}"
        }
        sh 'docker push tura142/employee-management'
