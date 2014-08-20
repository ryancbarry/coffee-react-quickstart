#!/bin/bash
/bin/echo -n "we are mounted and CULT_DIR is: "
/bin/echo $CULT_DIR
if [ -d $CULT_DIR ]; 
then
    cd $CULT_DIR
    git clone https://github.com/rseymour/coffee-react-quickstart  ./crq
    cd crq
    npm install 
    bundle install 
    npm install -g gulp cult
    cult watch
else
    echo "mount is messed up"
fi
