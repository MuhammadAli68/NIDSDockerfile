# NIDSDockerfile
+ Includes Dockerfile for NIDS POC
+ This repo will include the results of the following commands applied on the nids container created from the Dockerfile:
  - 'docker ps' command to list all running containers
  - 'docker stop' command to stop a running container
  - 'docker rm' command to remove a stopped container
  - 'docker logs' command to view the logs of a container
  - 'docker inspect' command to view the details of a container
  - 'docker exec' command to execute a command inside a running container
  - 'docker attach' command to attach to a running container
  - 'docker commit' command to create a new image from a container
  - 'docker cp' command to copy files/folders between the container and the host
  - 'docker stats' command to view the resource usage of containers
  - 'docker top' command to view the running processes inside a container
  - 'docker start' command to start a stopped container
  - 'docker pause' command to pause a running container
  - 'docker unpause' command to unpause a paused container
  - 'docker rename' command to rename a container
  - 'docker wait' command to wait for a container to exit and then display its exit code
  - 'docker attach' command to attach local standard input, output, and error streams to a running container
  - 'docker port' command to display the public-facing port that a container is listening on
  - 'docker update' command to update a container's resource limits
  - 'docker restart' command to restart a running container
+ First start the container using command "docker run -it --rm -p 5000:5000  dockerjuggy/my-nids-image:NIDStag". Output will be:
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/b7a22da7-c434-4ff6-9071-186145b89d1e)
+ Verify that the application is running by sending request from either the browser or Postman on https://localhost:5000/NIDS
+ Result of the first request should result in csv download:
  -__Logs___
    ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/3c40339d-2f22-49b1-bc9c-1f547e209190)
  -__Postman__
    ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/0ca4257d-4961-4feb-87da-394370048d43)

# Observations
+ 'docker ps', __Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/a93899e1-5165-45a9-9f8e-e904c05990e6)
+ 'docker stop',__Output:__
   ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/52be25c6-9569-4c15-9235-1d8c5f1ce0d1)
+ 'docker rm',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/f8ab4794-46ff-4bef-8e7f-70e3bcc9190f)
  The command resulted in an error because --rm tag was added in the "docker run" command
+ 'docker logs',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/e8a07619-428d-4891-bed8-3102171011c7)
+ 'docker inspect',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/106312fc-b04b-4432-9316-bbf6c6b23b33)
+ 'docker exec',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/6255c989-1378-431f-89ba-467d94fc6a72)
+ 'docker commit',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/4a968243-afb1-45a8-9ee0-7c9935cca85b)
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/c22daa2b-cee7-46c8-804b-3e401c4ba2cb)

+ 'docker cp',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/955102a0-8d04-4069-b879-18a50b1e4600)
+ 'docker stats',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/51e1fef1-d7f5-4a39-b52a-abaa07cfcd47)
+ 'docker top',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/4f128de2-1005-426c-91bd-2d5da60f79de)
+ 'docker pause',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/75da85a3-eeed-4256-b814-fabb3ff8fcc0)
+ 'docker unpause',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/bd6414c2-c584-4782-9f9a-3c69fb6901c7)
+ 'docker port',__Output:__
  ![image](https://github.com/MuhammadAli68/NIDSDockerfile/assets/57432644/3737b09f-eeca-4013-84ce-e7124b4ff02a)


