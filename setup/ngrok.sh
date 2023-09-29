#first export ngrok token from dashboard : https://dashboard.ngrok.com/get-started/your-authtoken
<<<<<<< HEAD
export token=24M3FVJLLNJEggjRVJACeleqLNq_2pKX95ShejNGmCYs4gNFv
#trial : 24M3FVJLLNJEggjRVJACeleqLNq_2pKX95ShejNGmCYs4gNFv
# install
install_pkg="bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz"
wget $install_pkg
=======
export token=
# install
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
>>>>>>> hackathon
sudo tar xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken $token