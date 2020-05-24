image_name=py3fastapi
hub_namespace=natihd16

build:
	docker build -t ${image_name} .
tag:
	docker tag ${image_name} ${hub_namespace}/${image_name}
push:
	docker push ${hub_namespace}/${image_name}
pull:
	docker pull ${hub_namespace}/${image_name}
deploy:
	kubectl deploy -f deploy.yaml
