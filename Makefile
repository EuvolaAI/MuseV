# server, 如 feeds_proxy_server
IMAGE := musev
cur_dateTime = $(shell date +'%m%d%H%M')


upload:
	docker build -t hkccr.ccs.tencentyun.com/algorithm/${IMAGE}:test_${cur_dateTime} .
	docker push hkccr.ccs.tencentyun.com/algorithm/${IMAGE}:test_${cur_dateTime}
	docker rmi hkccr.ccs.tencentyun.com/algorithm/${IMAGE}:test_${cur_dateTime}

