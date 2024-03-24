kubectl -n zulip-bots \
	rollout restart \
	deployment/zulip-bot-cs-sc-bridge \
	deployment/zulip-bot-cs-sc-cs-public

#	deployment/zulip-bot-csit-deployment \
#	deployment/zulip-bot-nbephys-deployment \
#	deployment/zulip-bot-scicomp-deployment
