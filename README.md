# Zounds Timbre Search

## Local Deploy

This example code will build and stand up a simple, timbre-based similarity search that you can interact with in your browser.

Just run...

```bash
docker-compose build --force-rm
```

...and then

```bash
docker-compose up
```

...to play with the search on localhost.

## Remote Deploy

The `deploy.sh` script will actually deploy this search to a rackspace VM.  First, set some environment variables...

```bash
export OS_USERNAME=YOUR_RACKSPACE_USERNAME
export OS_API_KEY=YOUR_RACKSPACE_API_KEY
export OS_REGION_NAME=PREFERRED_RACKSPACE_REGION_NAME
```

...and then run the script:

```bash
./deploy.sh
```

`deploy.sh` is based on [this great guide](https://developer.rackspace.com/blog/dev-to-deploy-with-docker-machine-and-compose/)


