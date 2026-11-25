#!/bin/bash
sudo growpart /dev/nvme0n1 4
sudo lvextend -L +30G /dev/mapper/RootVG-varVol
sudo xfs_growfs /var

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user 


# sudo pvcreate /dev/nvme1n1
# sudo vgextend RootVG /dev/nvme1n1
# sudo pvs
# sudo vgs

# sudo lvextend -L +10G /dev/mapper/RootVG-varVol
# sudo xfs_growfs /var
