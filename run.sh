#!/bin/bash

bash download_data.sh

git clone https://github.com/shentianxiao/text-autoencoders
cd text-autoencoders

python train.py --train data/yelp/train.txt --valid data/yelp/valid.txt --model_type vae --lambda_kl 0.1 --save-dir checkpoints/yelp/vae_kl0.1
