MY_HOST=192.168.0.118
CONTAINER_PATH=`pwd`
docker run --rm -it -v $CONTAINER_PATH/logs:/etc/httpd/logs -v $CONTAINER_PATH/dispatcher_cache:/etc/httpd/dispatcher_cache -e AEM_HOST=$MY_HOST -e AEM_PORT=4502 -p 1083:80 -p 443:443 local/aem-dispatcher-author
