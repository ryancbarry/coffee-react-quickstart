#!/bin/bash
/bin/echo -n "we are mounted and CULT_DIR is: "
/bin/echo $CULT_DIR
if [ -d $CULT_DIR ]; 
then
    /bin/echo "doing the rm"
    cd /crq
    rm -rf src;
    rm -rf assets;
    rm -rf public;
    ln -s $CULT_DIR/src src;
    ln -s $CULT_DIR/assets assets;
    mkdir public
    ls src
    cult build
    ls -lsrt /crq/src/*
    cult watch
else
    echo "oh crap"
    cult build;
    cult watch;
fi
echo "peace out"

