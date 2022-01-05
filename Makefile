# [[file:manylinux.note::f70a1a37][f70a1a37]]
manylinux2010:
	docker build --network=host -t gwp/manylinux2010 .

manylinux2014:
	docker build --network=host -t gwp/manylinux2014 -f Dockerfile.manylinux2014 .

manylinux2010-user:
	docker build --network=host -t gwp/manylinux2010-user  -f Dockerfile.user .
# f70a1a37 ends here
