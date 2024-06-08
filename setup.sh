oc create -f grafana-build.yaml


oc apply -f grafana-deployment.yaml


oc set volumes deployment/example-application \
>   --add --name example-pv-storage --type pvc --claim-class nfs-storage \
>   --claim-mode rwo --claim-size 15Gi --mount-path /var/lib/example-app \
>   --claim-name example-pv-claim

docker build -t your-image-name .

docker run -d -p 3000:3000 --name=grafana grafana/grafana-oss:latest

podman tag quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0

COMANDOS DOCKER:
docker tag grafana-img:v1.0 quay.io/miami_freis/grafana-img-1.0

docker push quay.io/miami_freis/grafana-img-1.0

docker run -d -p 3000:3000 grafana-img:v1.0

COMANDOS PODMAN:
podman pull -q quay.io/miami_freis/grafana-img-1.0

quay.io/miami_freis/grafana-img-1.0 

podman run -d -p 3000:3000 localhost/grafana-img:v1.0