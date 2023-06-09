pipeline {
    // runs on any available jenkins agents
    agent any 
    
    parameters {
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }

    // declaring a new env
    environment {
        NEW_VERSION = '1.3.0'
    }
    stages {
        stage("build") {
            steps {
                echo 'building'
                echo "building version ${NEW_VERSION}"

            }
        }
         stage("test") {
            // when{
            //     expression {
            //         // env variable
            //         BRANCH_NAME == 'dev' || BRANCH_NAME == 'main'

            //     }
            // }
             when {
                expression {
                    params.executeTests
                }
            }

            steps {
                 echo 'testing'
            }
        }
         stage("deploy") {
            steps {
                 echo 'deploying'
            }
        }
    }
    // execute some logic AFTER all stages executed
    // post {
    //     always {

    //     }
    //     failure {

    //     }
    //     success{

    //     }
    // }

}