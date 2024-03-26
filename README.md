STEPS TO BUILD THE HTTPD DOCKER IAMGE
-------------------------------------

Prerequisite:
    Install the git client in client's machine.
    
    
STEP_1: Clone the repository
    
    Command: git clone https://github.com/ctgopinaath/Cloud-and-DevOps.git

STEP_2: Identify the Dockerfile contents
    
    Command: cat Dockerfile

STEP_3: Build the docker image
    
    Syntax: docker build -t <image_name> .
    
    Command: docker build -t webserver_image .

STEP_4: Verify the docker image
    
    Command: docker image ls
 
STEP_5: Deploy the container
    
    Syntax: docker run -dit --name <container_name> -p <host_port>:<container_port> <image_name>
    
    Example:  docker run -dit --name webserver -p 80:80 webserver_image
