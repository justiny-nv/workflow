#!/bin/bash

apt-get update
apt-get upgrade
apt-get install git

mkdir ref 
cd ref 

declare -a repos=(
	"https://github.com/chenyuntc/simple-faster-rcnn-pytorch.git"
	"https://github.com/multimodallearning/pytorch-mask-rcnn.git"
	"https://github.com/roytseng-tw/Detectron.pytorch.git"
	"https://github.com/cbfinn/rllab.git"
	"https://github.com/openai/baselines.git"
)

for i in "${repos[@]}"
do
	git clone "$i"
done 

cd ..
echo "Fisniehd downloading repos ... "

