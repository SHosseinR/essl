# essl
ESET server security for linux. A repository to run ess on docker.

First get and offline licence for ess. It should be with username and password or online activation method. Name this licence, license.lf and copy this in both eset and miror folders. 


# setup mirror
copy anything from mirror folder into /tmp/mirrorTool. 

cd /tmp/mirrorTool

chmod +x setup.sh

./setup.sh

now you should serve /tmp/mirrorTool/mirror folder with the root of /tmp/mirrorTool/


# setup ess
run docker-compose up -d

after container has started, run /etc/startup.sh in the container. 

note that for mirror url, http://host.docker.internal/mirror/ is set. you may change it to the your mirror url. 
look for it in the eset_config.xml

more details on https://help.eset.com/essl/11.0/en-US/file_and_folder_structure.html
