TAG = ovrclk/ubuntu-kb

img:
	docker build -t $(TAG) . 

push:
	docker push $(TAG)

sh:
	docker run -it --rm $(TAG) /bin/bash
