FROM ubuntu
ENV PYTHONUNBUFFERED 1
RUN apt-get update -qq
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs bundler ruby git
RUN git clone https://github.com/rseymour/coffee-react-quickstart ./crq
WORKDIR crq
RUN npm install 
RUN bundle install 
RUN npm install -g gulp cult
RUN ls
#RUN cp -nR coffee-react-quickstart/src/* mycode
#RUN ln -s mycode coffee-react-quickstart/src
#RUN cult build
#RUN rm -rf src
#ENTRYPOINT ln -s $CULT_DIR/src coffee-react-quickstart/src && cd coffee-react-quickstart && cult build && cult watch
ADD mounted.sh /mnt.sh
RUN chmod 755 /mnt.sh
CMD bash /mnt.sh 
