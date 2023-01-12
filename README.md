Welcome to the cloud computing project: Versioning of containerized databases (Team: Lukas Kammler, Dennis Klink, Christian Jakobi)

In this file the used GitHub actions are described in more detail.

First of all the important syntax of a workflow is going to be explained: (Source: https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)

    on: [workflow_dispatch]   #In this case the workflow is triggered manually

    jobs: #A job is a set of steps in a workflow that execute on the same runner. Each step is either a shell script that will be executed, or an action that will be run
    
    runs on: ubuntu-latest # Configures the job to run on the latest version of an Ubuntu Linux runner. The job will execute on a fresh virtual machine hosted by GitHub.

    steps: #Groups together all the steps that run in a particular job. Each item nested under this section is a separate action or shell script.

    uses: actions/checkout@v3 #Specifies that a step will run v3 of the actions/checkout action. It checks out your repository onto the runner.

    uses: liquibase-github-actions/... #In this project this keyword uses a Liquibase GitHub Action provided by Liquibase
    with:                              #with some parameters

    run: 
    #This keyword tells the job to execute a command on the runner. In case of the diff_changelog workflow Git commands are used to push back changed code that was generated while running the action (updated changelog)


How to use the project:

First you have to make shure that you are able to connect to our databases. They are both in separate AWS EC2 instances. Due to our AWS Labrole every 4 hours the access data changes an the contaiers stop running. You have to log on the instances and have to start the containers again (they are running on account: klinkden@hs-pforzheim.de).For the Postgres Reference Instance run: sudo docker start postgresreference. For the Postgres Instance run: sudo docker start postgrestarget. Both are running on Port 5432.
Username and password of the databases stay constant and are stored in the GitHub Secrets. When you want to update the GitHub Secrets use following structure for url (EC2 Postgres Instance) and referenceUrl (EC2 Postgres Reference Instance): jdbc:postgresql://ec2-blablabla.balabla.amazonaws.com:5432/postgres. Click on the EC2 Instances and use the Public IPv4 DNS (ec2-blablabla.balabla.amazonaws.com).

If you completed the steps above you are now able to use the workflows.

In the following the Postgres Reference Instance Database is called dev and the Postgres Instance Database is called prod.

1. Make some changes in the dev database
2. run the diff_chagnelog workflow. (Click in the repository on "Actions" then select on the left-hand side the diff_changelog action. You can then run the workflow. The other actions are triggered the same way)
3. Check the updated changelog if the changes that you made are correct (example/changelogs/containerchangelog.sql). This is recommended by Liquibase!
4. run the update_database workflow
5. You can now check the prod database. You will see now the same changes that you made to the dev database


Now the different workflows are explained in more detail

1. diff_changelog:
The liquibase-github-actions/diff-changelog@v4.18.0 action compares the dev with the prod database and creates changesets and is saving them in a changelog file. For all possible parameters visit https://github.com/marketplace/actions/liquibase-diff-changelog-action. After that the workflow runs Git commands to push back the changed changelog.

2. upate_database:
The update_database workflow doploys any changes in the changelog file that have not been deployed. Therefore the liquibase-github-actions/update@v4.18.0 action uses the DATABASECHANGELOG table in the prod database to track which changesets have been run. If the table does not exist in the prod database, the action creates one automatically. Also generated if not already there is the DATABASECHANGELOGLOCK table. This table ensures only one instance of Liquibase runs at a time. To avoid conflicts between concurrent updates—which can happen if multiple developers use the same database instance or if multiple servers in a cluster auto-run Liquibase on startup—the DATABASECHANGELOGLOCK table sets the LOCKED column to 1 when an update is currently running. If you make another update during this time, Liquibase waits until the lock releases before running it. (Sources: https://docs.liquibase.com/concepts/tracking-tables/databasechangelog-table.html ; https://docs.liquibase.com/concepts/tracking-tables/databasechangeloglock-table.html) For all possible parameters visit https://github.com/marketplace/actions/liquibase-update-action
checksum fehler


