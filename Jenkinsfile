node {
  stage('Build Image') {
    docker.withRegistry('https://jenkins.paulbunyan.net:5000', 'pbc-docker-registry') {
      checkout scm
      def img = docker.build('httpd')
      img.push('latest')
    }
  }
}