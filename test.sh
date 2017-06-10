#!/bin/bash
pwd=`pwd`
volume="$pwd:/tmp/environment-setup"
image_name="ansible-docker-role"

cd tests
for dir in */ ; do
    for subdir in "$dir*" ; do
        IFS=' ' list=($subdir)
        for distro in "${list[@]}"; do 
            echo "Starting build $distro"
            docker build -t $image_name $distro && docker run -v $volume --rm -i -t $image_name
            if [[ $? != 0 ]]; then
              echo
              echo "==="
              echo "[ERROR] Error to build $distro!"
              exit 1
            fi
            echo '##############################################################################'
            echo '##############################################################################'
            echo '##############################################################################'
        done
    done
done