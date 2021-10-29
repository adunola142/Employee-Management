node{
	stage('SCM Checkout')
	{	
		git credentialsId: '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', url: 'https://github.com/adunola142/Employee-Management.git'
	}
	stage('Run Docker Compose file')
	{
		sh 'sudo docker-compose build'
		sh 'sudo docker-compose up -d'
	}
	stage(Push image to Docker Hub')
	{
		/*withCredentials({string(credentialsId: 'DockerhubPassword', variable:'DHPWD')})
	{
		sh "docker login -u
