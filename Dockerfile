#pull the httpd base image
FROM httpd:latest

#person who is maintaining
MAINTAINER "nayakvinitha413@gmail.com"

#copy car application from src to dest httpd container
copy ./ /usr/local/apache2/htdocs/
