#!/bin/bash -x
echo Deploy started on `date`
sudo docker rm -f  nodeapp
sudo docker rmi 151500355301.dkr.ecr.ap-south-1.amazonaws.com/assignment:latest --force
aws ecr get-login-password \
        --region ap-south-1 | sudo docker login \
        --username AWS \
        --password-stdin 151500355301.dkr.ecr.ap-south-1.amazonaws.com
sudo docker run -p 3000:3000 --name nodeapp -d 151500355301.dkr.ecr.ap-south-1.amazonaws.com/assignment:latest
