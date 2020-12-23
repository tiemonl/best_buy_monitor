# Best Buy Monitor

## Thanks
Original taken from https://github.com/michaelpa-dev/BestBuyMonitor and I dockerised it. For a non docker version, please visit his repository.

## Prerequisites
Make sure you have Docker currently installed on the machine you plan to run this application on. If you have any problems with installation or unfamiliar with this there are some resources below.

[Docker](https://docs.docker.com/get-docker/)

# Usage

| ENV variable | Information | Default | Notes |
| ------------ | ----------- | ------- | ----- |
| WEBHOOK_URL | Discord webhook url where all notifications sent from the monitor will go | | |
| SKUS | A comma seperated collection of all the items you want monitored | | A single SKU does not need a comma |
| INTERVAL | Time in milliseconds between each time the monitor will check on your list of products you've entered | 10000 | It is recommended to not check too quickly to avoid being banned |
| MONGO_URL | A connection string to your mongo database | | |

## Running the application
 ```
docker run \
  --name=best_buy_monitor \
  --restart unless-stopped \
  --detach \
  -it \
  -e WEBHOOK_URL=<replace> \
  -e SKUS=<replace> \
  -e MONGO_URL=<replace> \
  tiemonl/best_buy_monitor
 ```
