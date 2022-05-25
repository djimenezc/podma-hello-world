export CONTAINER_NAME=hello-world


podman-init:
	-podman machine init ${CONTAINER_NAME}
	@echo starting ${CONTAINER_NAME} machine
	podman machine start ${CONTAINER_NAME}
	podman system connection default hello-world

podman-destroy:
	podman system connection default podman-machine-default
	podman machine rm ${CONTAINER_NAME}

podman-down:
	@echo "Shutting down podman machine"
	podman machine stop ${CONTAINER_NAME}

podman-connection-list:
	podman system connection ls

podman-machine-list:
	podman machine list

podman-version:
	podman version

podman-build:
	podman build -t ${CONTAINER_NAME} .

podman-run:
	podman run --rm localhost/${CONTAINER_NAME}

docker-build:
	docker build -t localhost/${CONTAINER_NAME} .

docker-run:
	docker run --rm localhost/${CONTAINER_NAME}