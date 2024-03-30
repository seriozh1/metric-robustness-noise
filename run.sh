#!/bin/bash

# data download
mkdir data
cd data

dir="http://people.csail.mit.edu/tianxiao/data"

wget $dir/yelp.zip
unzip yelp.zip
rm yelp.zip

wget $dir/yahoo.zip
unzip yahoo.zip
rm yahoo.zip

git clone https://github.com/shentianxiao/text-autoencoders
cd text-autoencoders

python train.py --train data/yelp/train.txt --valid data/yelp/valid.txt --model_type vae --lambda_kl 0.1 --save-dir checkpoints/yelp/vae_kl0.1
