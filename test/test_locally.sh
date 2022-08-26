#!/usr/bin/env bash

set -eu

docker build -f .ipol/Dockerfile -t ipol-demo .

# this is roughtly equivalent to what happens on the system during the execution
sigma=25.3
docker run -v $(pwd)/test:/workdir/exec --workdir /workdir/exec --user $(id -u):$(id -g) --env sigma="$sigma" --rm ipol-demo bash -c 'python $bin/main.py'
