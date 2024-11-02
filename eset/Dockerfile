# Start with a lightweight base image
FROM focker.ir/jrei/systemd-ubuntu

# Install dependencies and ESET CLI
RUN apt-get update && apt-get install -y \
    wget \
    curl 

RUN wget https://download.eset.com/com/eset/apps/business/efs/linux/latest/efs.x86_64.bin -O eset_installer.sh \
    && chmod +x eset_installer.sh 
    
COPY licence.lf /licence/licence.lf
COPY startup.sh /etc/startup.sh
COPY eset_config.xml /etc/eset_config.xml
# COPY "updates:/updates"

EXPOSE 9443

# ENTRYPOINT [ "sh", "-c", "/etc/entrypoint.sh" ]
ENTRYPOINT ["/lib/systemd/systemd"]