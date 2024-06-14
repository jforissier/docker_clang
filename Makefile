VER_MAJ=18
VER=$(VER_MAJ).1.6
ARCH=$(shell uname -m)
IMAGE=jforissier/clang-$(VER)-$(ARCH)

build:
	docker build -t $(IMAGE) .

push: build
	docker push $(IMAGE)
