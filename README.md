# as far as I got 

docker build -t shaunb:q3ded .
docker run -d -p 27960:27960/udp shaunb:q3ded

# assumes quake3 pak file location is whatever/quake3/baseq3
# could do with environment variables for pakfiles and configs

# doesn't attach TTY so interactive mode doesn't work and isn't quittable
# running with -d in the background is ok

# current game breaker, only runs on a certain docker network, not accessible from client
# specify on run?



