# cyri
This is a dockerized full stack application with:

React application as front end

Spring boot microservices as back end

In order to run the application in your local system

Prerequisities:

- Git Installation : https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

- Docker Windows : https://docs.docker.com/docker-for-windows/install/

- Docker Mac: https://docs.docker.com/docker-for-mac/install/

- Docker Linux : https://docs.docker.com/engine/install/

Once you have docker set up in your local

Choose a folder where you want to download and open a bash terminal (if windows try using cmder or conemu softwares).

cd into the directory where you want to download the github project.

To download and run the project,run the below commands:

1) git clone https://github.com/MastanShaik30/cyri.git

2) cd cyri

3) To initialize the submodules in the main project cyri

     git submodule init

4) To clone the submodule project into your local system

     git submodule update

5) once you have downloaded the submodule you can run the project using docker


If it's a windows system, Please run the below extra steps to make sure docker compose works

    - cd into the submodules of spring boot applications (cyri-blms,cyri-gs).
    
    - In each submodules run the following command
    
                 dos2unix mvnw
    

6) To run all the microservices and react ui, run the following docker command

               docker-compose up
               
7) To stop the docker instances , run the following docker command

               docker-compose down
               
You can also run each microservice and react app seperately using Dockerfile in the each submodule or the each microservice
Below are the steps how to build and run each microservice using Docker

1) Enter into the submodule directory:

  Eg: cd cyri-blms
  
2) Now build the docker image using Dockerfile.

    docker build -t <image_name_as_per_your_choice> .
    
3) Now run the docker image using below command.

    docker run -p 8080:8080 <image_name_mentioned_in_the_above_build_command>
    
4) Here -p denotes the port on which docker container is running. In the above example 8080:8080 means
   - The first 8080 is the port on which docker container is running
   - The second 8080 is the port on which your application is running (Eg : Spring boot by default 8080, React by default 3000, Angular       by deafult on 5000 or based on your configuration of port in your application)
   
   
 


