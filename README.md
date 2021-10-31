# verus-docker
A docker setup to mine Verus coin using Hellminer for those who are not using linux natively on their computer. Follow the steps below to setup to run this on your local computer. I tested this fully on my Macbook Pro with Docker for Mac Version 2.0.0.0-mac78 (28905). I believe any latest Docker for Mac version should work.

Download Docker Desktop
Git clone this repo
Go to the cloned repo folder and modify the PUBLIC_VERUS_COIN_ADDRESS in docker-compose.yml to be your public Verus coin address.
In terminal, run docker-compose build inside the repo.
Then run docker-compose run linux bash
Run ./mine.sh and mining begins! Go to url https://luckpool.net/verus/miner.html?REPLACE_THIS_WITH_YOUR_PUBLIC_VERUS_COIN_ADDRESS to check your mining progress. (Take a couple minutes to show up in the website)

source : https://github.com/yaoyuyang/verus-docker
