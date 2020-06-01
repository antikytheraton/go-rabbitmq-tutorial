rabbit-mq-up:
	docker run -d --rm \
	--hostname my-rabbit \
	--name some-rabbit \
	-p 15672:15672 \
	-p 5672:5672 \
	rabbitmq:3-management

consumer:
	go run consumer.go

main:
	go run main.go
