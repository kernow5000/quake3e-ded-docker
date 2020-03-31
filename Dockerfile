# bugs
# unable to quit, runs in foreground hmm
# not exposed on local ip


FROM centos:7
RUN useradd q3
RUN yum -y install wget unzip && yum clean all
USER q3
RUN mkdir /home/q3/q3ded \
	&& cd /home/q3/q3ded \
	&& wget -q https://github.com/ec-/Quake3e/releases/download/2020-02-27/quake3-1.32e-20200227.zip \
	&& unzip quake3-1.32e-20200227.zip quake3e.ded.x64 \
	&& rm quake3-1.32e-20200227.zip \
	&& cd /home/q3/q3ded \ 
	&& chmod +x quake3e.ded.x64
# environment variables for adding pak files - or provide during build? or COPY into image
# configs?
# command line arguments

# this is where you need your original quake3 pak files
ADD quake3/baseq3/* /home/q3/q3ded/baseq3/

RUN pwd
EXPOSE 27960/udp
CMD /home/q3/q3ded/quake3e.ded.x64




