# Jumper Image

This is a simple docker image to be injected to a existing k8s cluster to help with debugging.


Usage 

```bash
kubectl apply -f jumper-pod.yaml
kubectl exec -it jumper-pod -- /bin/zsh
```
