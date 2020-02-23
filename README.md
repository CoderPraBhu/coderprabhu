This repository holds code and configurations for http://coderprabhu.com

Git Repo: https://github.com/CoderPraBhu/coderprabhu

Udpate commands:  
```gcloud container clusters create coderprabhu-cluster  
docker build -t gcr.io/kubegcp-256806/coderprabhu-ui:v1 .  
docker run --rm -p 8080:8080 gcr.io/kubegcp-256806/coderprabhu-ui:v1  
docker push gcr.io/kubegcp-256806/coderprabhu-ui:v1  
kubectl apply -f manifests/coderprabhu-ui-deployment.yaml  
gcloud compute addresses create coderprabhu-ip --global  
kubectl apply -f manifests/coderprabhu-ingress-static-ip.yaml  
```
Read commands:   
```gcloud container clusters describe coderprabhu-cluster   
kubectl get deployment coderprabhu-ui-web  
kubectl get pods  
kubectl get ingress  
gcloud compute addresses describe coderprabhu-ip --global  
curl http://coderprabhu.com  
	Hello, Geeks!  
	By: CoderPraBhu  
	Version: 1.0.0  
	Hostname: coderprabhu-ui-web-558584c55c-84t89```   