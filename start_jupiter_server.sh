# Note: You will have to add "sudo" prior to the "docker run" command if 
#	you dont add your self to the dockerroot group

# Attach the containers interactive tty to the host interactive tty
# Map localhost:4000 to tensorboard container port 8888
# Map localhost:4001 to tensorboard container port 6006
# Attach the host <dev. enviroment>/notebooks to the containers <notebooks> dir with read and write permissions
# Select the latest tensorflow container running python 3+
docker run -it --rm\
	-p 4000:8888\
	-p 4001:6006\
	-v $PWD/notebooks:/notebooks:rw\
	-v /Volumes/Samsung\ Portable\ SSD\ T3\ Media/ImageNet/ImageNet\ Object\ Detection\ Challenge\ 2017/ILSVRC-TRAIN:/notebooks/dataset:ro\
	--name tf-jupyter\
	tf-jupyter
