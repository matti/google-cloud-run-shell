# google cloud run shell

The missing shell access for https://cloud.google.com/run

See the demo "Getting shell access to cloud run in 60 seconds" at https://www.youtube.com/watch?v=P-XiXIESPC8

built with:

  - https://github.com/jpillora/chisel
  - https://github.com/matti/lolbear


## heroku chisel bridge

create mychisel.herokuapp.com

    cd heroku-chisel
    bin/deploy mychisel

## shell in cloud run

    bin/deploy my-project mychisel.herokuapp.com

## start client in your own computer:

    chisel client mychisel.herokuapp.com 9999:localhost:2222

## finally

    ssh -p 9999 localhost
