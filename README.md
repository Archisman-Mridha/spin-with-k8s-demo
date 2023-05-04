# Spin with Kubernetes

Demonstrating `usage of the spin framework to develop WASM based applications and deploy them to a Kubernetes cluster`. Here is the [CNCFConf + KubeConf 2023 talk](https://youtu.be/LdsyS2cedOw).

Commands -

```sh
# Installing spin and wasi
curl -fsSL https://developer.fermyon.com/downloads/install.sh | bash &&
  sudo mv spin /usr/local/bin/
spin --version
rustup target add wasm32-wasi

# Used to bootstrap the spin HTTP component
spin templates install --git https://github.com/fermyon/spin --update
spin new # choose the http-rust component option

# Installing spin k8s plugin
spin plugin install -u https://raw.githubusercontent.com/chrismatteson/spin-plugin-k8s/main/k8s.json
# Generate the Dockerfile and Kubernetes deployment file
spin k8s scaffold
```
