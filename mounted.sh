#!/bin/bash

if [ -d $CULT_DIR ]; 
then
    rm -rf src;
    rm -rf assets;
    ln -s $CULT_DIR/src src;
    ln -s $CULT_DIR/assets assets;
    cult build;
    cult watch;
else
    cult build;
    cult watch;
fi

