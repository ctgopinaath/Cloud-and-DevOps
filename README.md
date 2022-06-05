STEPS TO BUILD THE HTTPD DOCKER IAMGE

Prerequisite:
    Install the git client in client's machine
    
    
STEP_1: Clone the repository
    git clone https://github.com/ctgopinaath/httpd.git

STEP_2: Navigate to httpd directory
    cd httpd

STEP_3: Build the docker image
    docker build -t <image_name> .
    Ex: docker build -t httpdimage .

STEP_4: Verify the docker image
    docker image ls
 
STEP_5:
    docker run -dit --name <container_name> -p <host_port>:<container_port> <image_name>
    Ex: docker run -dit --name webserver -p 80:80 httpdimage
