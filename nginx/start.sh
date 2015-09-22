#!/bin/bash

/bin/sed -i "s@<APP_SERVER_NAME>@${APP_SERVER_NAME}@" $NGINX_VHOST
/bin/sed -i "s@<FPM_HOST>@${FPM_1_PORT_9000_TCP_ADDR}@" $NGINX_VHOST
/bin/sed -i "s@<FPM_PORT>@${FPM_1_PORT_9000_TCP_PORT}@" $NGINX_VHOST

/bin/bash -c "$*"
