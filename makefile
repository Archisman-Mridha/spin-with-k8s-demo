create-cluster:
	k3d cluster create spin-with-k8s --config ./k3d.config.yaml
# Or directly run this command in the terminal
# k3d cluster create spin-with-k8s --image ghcr.io/deislabs/containerd-wasm-shims/examples/k3d:v0.5.1 -p "8081:80@loadbalancer" --agents 2

start-cluster:
	k3d cluster start spin-with-k8s

stop-cluster:
	k3d cluster stop spin-with-k8s

delete-cluster:
	k3d cluster delete spin-with-k8s