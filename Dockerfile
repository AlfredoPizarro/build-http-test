FROM registry.access.redhat.com/ubi7/ubi:7.9-901

RUN yum repolist &&  yum install -y rh-dotnetcore10.x86_64

# Add application sources
ADD index.html /var/www/html/index.html

# The run script uses standard ways to run the application
CMD run-httpd
