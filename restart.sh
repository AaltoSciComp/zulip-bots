kubectl -n zulip-bots \
        rollout restart \
        deployment/zulip-bot-cs-sc-bridge \
        deployment/zulip-bot-cs-sc-bridge-cs-public \
        deployment/zulip-bot-cs-sc-bridge-jupyter

#	deployment/zulip-bot-csit-deployment \
#	deployment/zulip-bot-nbephys-deployment \
#	deployment/zulip-bot-scicomp-deployment
