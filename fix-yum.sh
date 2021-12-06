# [[file:manylinux.note::afbda165][afbda165]]
# https://mirrors.tuna.tsinghua.edu.cn/help/centos-vault/
minorver=6.10
sed --in-place -e "s|^mirrorlist=|#mirrorlist=|g" \
         -e "s|^#baseurl=http://mirror.centos.org/centos/\$releasever|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos-vault/$minorver|g" \
         /etc/yum.repos.d/CentOS-*.repo

rm /etc/yum/pluginconf.d/fastestmirror.conf
rm /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
rm /etc/yum.repos.d/CentOS-SCLo-scl.repo
rm /etc/yum.repos.d/epel.repo

yum makecache
# afbda165 ends here
