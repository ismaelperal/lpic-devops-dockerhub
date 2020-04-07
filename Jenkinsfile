podTemplate(containers: [
    containerTemplate(name: 'docker', image: 'docker:19.03.8-dind', ttyEnabled: true, command: 'cat'),
        volumes: [
            hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock'),
        ]
  ]) {

    node(POD_LABEL) {
        stage('Get reposistory info') {
            git 'https://github.com/ismaelperal/lpic-devops-dockerhub'
            container('docker') {
                stage('Build image') {
                    sh 'cd 01_from_scratch; docker build -t miwp .'
                }
            }
        }
    }
}