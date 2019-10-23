# connect to cluster
gcloud container clusters get-credentials cluster-name --zone europe-west3-a --project my-project-123456
# make service public
kubectl patch svc "prometheus-1-grafana"  -p '{"spec": {"type": "LoadBalancer"}}'                                     
