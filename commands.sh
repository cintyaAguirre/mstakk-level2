gcloud auth login
gcloud config configurations create cintya-aguirre-level2-ms-config
gcloud config configurations activate cintya-aguirre-level2-ms-config
gcloud projects create cintya-aguirre-level2-ms

gcloud compute instances create \
  kubernetes-master \
  --image-project coreos-cloud \
  --image coreos-stable-1010-6-0-v20160628 \
  --machine-type n1-standard-1 \
  --metadata-from-file user-data=cloud-config/master-config.yaml

