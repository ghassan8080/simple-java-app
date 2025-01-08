Configure the Jenkins Pipeline for this repo with Jenkinsfile type (Scripted)

pipeline{
  agent any
  stages{
    stage('build'){
      steps{
        script{
          echo "build in progress"
        }
      }
    }
  }
}




Configure the Jenkins Pipeline for this repo with Jenkinsfile type (Declarative)
node{
    git branch: 'main', url: 'https://github.com/DinaGamalMahmoud/simple-java-app.git'
    stage('build'){
            sh'echo "build in progress"'
    }
}
