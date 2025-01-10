
pipeline{
  agent {
  label 'cont-agent'
}


   stages{
    stage('build'){
      steps{
        script{
          echo "build in progress"
        }
      }
    }
  }

  post {
  success {
    slackSend channel: '#jenkins-ci', message: 'slackSend "success ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"', teamDomain: 'boc-rmx8685', tokenCredentialId: 'slack-notification'
  
  failure {
       slackSend channel: '#jenkins-ci', message: 'slackSend "failed ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"', teamDomain: 'boc-rmx8685', tokenCredentialId: 'slack-notification'
  }

}


}


