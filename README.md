# README

This app is to help me learn how to create a Rails app that can be started with
Docker and git as the only dependencies. The other dependencies are then handled
by Docker.

To try along with me, install Docker on your machine. Then clone this repo and
then cd into it. All docker commands are run within the directory. Then run the
command below
```
$ docker build -t rspecdockerappimage .
```
This builds your docker image and containers that will be running the
application. This might take about 3 minutes to download all the containers and
install the gems.

Once it finishes, you can start up the application in the container-
```
$ docker run -p 3000:3000 rspecdockerappimage
```
Visit http://localhost:3000 and you should get the Welcome to Rails page.
Visit http://localhost:3000/high_scores as well.

Additionally, you can run unit tests-
```
$ docker run rspecdockerappimage rails test
```
