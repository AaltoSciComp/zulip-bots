# Zulip bots

This is a deployment of some zulip bots in kubernetes.  At this point,
it is a internal practice more than anything else.

* `secrets/` is a submodule, make sure you init/update it.
* Make the secrets first `sh make-secrets.sh -n KUBE_NAMESPACE`
* Create the deployment, `k8s-yaml/deployment.yaml` (`pod.yaml` is
  obsolete and should no longer be used).  Start/update with `kubectl
  apply -f k8s-yaml/deployment.yaml`.  Delete with `kubectl delete -f
  k8s-yaml/deployment.yaml`.

Done so far:

* Create docker image
* Create pod.yaml (no longer used, to be removed)
* Create secrets in submodule
* Create deployment

To do:

* Helm
* Add bots for other realms using helm

