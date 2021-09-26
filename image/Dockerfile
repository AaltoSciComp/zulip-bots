FROM python:3.9-alpine

RUN \
    apk add git && \
    mkdir /code
RUN \
    cd / && \
    git  clone https://github.com/AaltoSciComp/python-zulip-api --branch rkdarst/aalto

RUN \
    pip install /python-zulip-api/zulip/
RUN \
    /python-zulip-api/zulip/integrations/bridge_with_irc/irc-mirror.py --provision

CMD adduser -D -u 1000 zulip
USER 1000

CMD \
	python /python-zulip-api/zulip/integrations/bridge_with_irc/irc-mirror.py \
	--config-file=~/config/zuliprc \
	--irc-server=irc.cs.hut.fi \
	--channel='&csadmin' \
	--nick-prefix=csit \
	--stream=general \
	--topic='&csadmin' \
	--all-topics
