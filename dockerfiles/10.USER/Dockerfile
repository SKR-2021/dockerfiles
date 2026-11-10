FROM almalinux:9
RUN dnf install nginx -y
RUN useradd karunakar

USER karunakar
CMD ["nginx", "-g", "daemon off;"] 


# CMD           =  Defines the default command to execute when the container starts.
# nginx	        =  Starts the Nginx web server.
# -g	        =  Specifies a global Nginx configuration directive.
# daemon off;   =  Tells Nginx not to run as a background daemon.