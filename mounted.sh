#!/bin/bash
/bin/echo -n "we are mounted and CULT_DIR is: "
/bin/echo $CULT_DIR
if [ -d $CULT_DIR ]; 
then
    cd $CULT_DIR
    if [ ! -d crq ]
    then
        git clone https://github.com/ryancbarry/coffee-react-quickstart ./crq
        cd crq
        npm install 
        bundle install 
        npm install -g gulp cult http-server
    else
        cd crq
    fi
    #cult watch
    gulp build
    http-server public &
    bash
else
    echo "mount is messed up"
fi
