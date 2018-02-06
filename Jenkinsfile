node ('devops')  {
     // Wipe the workspace so we are building completely clean
   // deleteDir()
	
	stage("Pull the code") {
	   checkout scm 
	}
	stage("Download Artifcats") {
		sh 'chmod 777 PullArtifcats'
	//sh './PullArtifcats $version $commitcode'
             
         }
        
    stage ('Deploy to S3') {
    docker.image("garland/aws-cli-docker" ).inside {
	   
	withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: 'aws-s3',
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
     secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
		    ]])
		    {	        
   sh 'AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} AWS_DEFAULT_REGION=eu-west-3  chmod 777 PushS3  $version $commitcode'
    sh 'AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} AWS_DEFAULT_REGION=eu-west-3   ./PushS3  $version $commitcode'
        
             }
	}
    }

}
