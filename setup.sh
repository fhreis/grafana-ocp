oc create -f grafana-build.yaml


oc apply -f grafana-deployment.yaml


oc set volumes deployment/example-application \
>   --add --name example-pv-storage --type pvc --claim-class nfs-storage \
>   --claim-mode rwo --claim-size 15Gi --mount-path /var/lib/example-app \
>   --claim-name example-pv-claim

docker build -t your-image-name .

docker run -d -p 3000:3000 --name=grafana grafana/grafana-oss:latest