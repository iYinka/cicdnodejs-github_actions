### codeTest was a challenge. Here is the link to th solved challenge: https://codetest-yinka.netlify.app/

Task 1:

Use the Json Placeholder free API to create a CRUD application

API Resource - http://jsonplaceholder.typicode.com/guide/

Your API should have basic form validations



Task 2:

Use the free IMDB API provide by RapidAPI to create a chart.

Use the route /actors/get-awards to get awarded actors

Use the `year` field to calculate and build any chart of your choice (bar, line, pie, etc)

Generate a new field, `count` which is the number of occurrence of each year.

Plot the chart against this new field, `count`.

i.e 2008 == 3, 2007 == 2; means the year 2008 had 3 awards, and 2007 had 2 awards.

The total dataset to consider should be 22 awards.

API resource - https://rapidapi.com/apidojo/api/imdb8/

N/B: You'll need to create a free account with https://rapidapi.com and get an API key





name: Docker Image CI

on:
  push:
    branches: [ "master" ]
  pull_request:
    branches: [ "master" ]
jobs:
  build-container:
    name: Build Container
    runs-on: ubuntu-latest
    steps:
    - name: Checkout code
      uses: actions/checkout@v3
    - name: Build and Push a Docker Image
      uses: mr-smithers-excellent/docker-build-push@v4
      with:
        image: iyinka/cicd-demo-app
        tag: 1.2
        registry: docker.io
        uses: docker/login-action@v1
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_TOKEN }}

