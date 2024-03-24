# Run this with `-n {namespace}` to put in the right namespace.
# Otherwise secrets will be made in the default namespace!

kubectl -n zulip-bots delete secret generic zuliprc-csit $@ --ignore-not-found=true
kubectl -n zulip-bots create secret generic zuliprc-csit $@ --from-file=zuliprc=secrets/zuliprc-csit

# This secret was added manually:
# kubectl create secret generic zuliprc-scicomp -n zulip-bots --from-file=zuliprc=$HOME/.zuliprc-scicomp-zulip-cs-aalto-fi

if [ -e secrets/interrealm_bridge_config_scicomp_cs.py ] ; then
    kubectl -n zulip-bots delete secret generic zulip-cs-sc-bridge $@ --ignore-not-found=true
    kubectl -n zulip-bots create secret generic zulip-cs-sc-bridge $@ --from-file=interrealm_bridge_config=secrets/interrealm_bridge_config_scicomp_cs.py
fi

if [ -e secrets/interrealm_bridge_config_scicomp_cs_jupyter.py ] ; then
    kubectl -n zulip-bots delete secret generic zulip-cs-sc-bridge-jupyter $@ --ignore-not-found=true
    kubectl -n zulip-bots create secret generic zulip-cs-sc-bridge-jupyter $@ --from-file=interrealm_bridge_config=secrets/interrealm_bridge_config_scicomp_cs_jupyter.py
fi

if [ -e secrets/interrealm_bridge_config_scicomp_cs_cs_public.py ] ; then
    kubectl -n zulip-bots delete secret generic zulip-cs-sc-bridge-cs-public $@ --ignore-not-found=true
    kubectl -n zulip-bots create secret generic zulip-cs-sc-bridge-cs-public $@ --from-file=interrealm_bridge_config=secrets/interrealm_bridge_config_scicomp_cs_cs_public.py
fi
