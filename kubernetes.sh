# connect to cluster
gcloud container clusters get-credentials cluster-name --zone europe-west3-a --project my-project-123456
# make service public
kubectl patch svc "prometheus-1-grafana"  -p '{"spec": {"type": "LoadBalancer"}}'                                     
# create cluster
gcloud container clusters create mycluster \
--num-nodes 2 \
--machine-type n1-standard-2 \
--scopes "https://www.googleapis.com/auth/source.read_write,cloud-platform"
