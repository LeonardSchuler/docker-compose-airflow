# Docker Compose: Airflow + Postgres
## Install & Run the services
````
make
````
creates a Postgres container for Airflow metadata and an Airflow Webserver container exposing port 8080 to run your DAGs.

## Stop the services
````
make stop
````

## Resource Usage
I tested the resource usage on an Intel(R) Core(TM) i3-5005U CPU with a frequency of 2.00GHz under Kubuntu 18.04 LTS and kernel 4.15.0-121-generic.
After restarting the computer and starting the containers using
````
make
````
I observed the following resource usage:
- The runnign containers use 400MiB of RAM
- An additional chromium tab for the webserver UI uses an additional 500 MiB of RAM
- 1 of my 4 cores runs at 100% usage
