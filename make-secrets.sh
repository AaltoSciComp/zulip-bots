kubectl delete secret generic zuliprc-csit $@ --ignore-not-found=true
kubectl create secret generic zuliprc-csit $@ --from-file=zuliprc=secrets/zuliprc-csit
