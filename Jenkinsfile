pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/balausnale/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'local_jdk', maven: 'local_maven') {
      sh 'mvn clean package'                    // provide maven command

} } }


  stage('deploy to dev')
    { steps {
       withDockerRegistry(credentialsId: 'DockerHub', url: 'https://index.docker.io/v1/') {
   sh 'sudo docker build -t balausnale/feb-maven-web:latest .'
   sh 'sudo docker images'
   sh 'sudo docker push balausnale/feb-maven-web:latest'
       
    } } }

}
}
