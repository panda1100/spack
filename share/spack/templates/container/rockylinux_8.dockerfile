{% extends "container/bootstrap-base.dockerfile" %}
{% block install_os_packages %}
RUN yum update -y \
<<<<<<< HEAD
 && yum install -y \
        bzip2 \
        curl \
        file \
=======
 # See https://fedoraproject.org/wiki/EPEL#Quickstart for powertools
 && yum install -y dnf-plugins-core \
 && dnf config-manager --set-enabled powertools \
 && yum install -y epel-release \
 && yum update -y \
 && yum --enablerepo epel groupinstall -y "Development Tools" \
 && yum --enablerepo epel install -y \
        curl \
>>>>>>> 3643b8be18 (New bootstrap container for Rocky Linux 8)
        findutils \
        gcc-c++ \
        gcc \
        gcc-gfortran \
        git \
        gnupg2 \
<<<<<<< HEAD
        hg \
=======
>>>>>>> 3643b8be18 (New bootstrap container for Rocky Linux 8)
        hostname \
        iproute \
        make \
        patch \
<<<<<<< HEAD
        python3 \
        python3-pip \
        python3-setuptools \
        svn \
        unzip \
        xz \
        zstd \
=======
        python38 \
        python38-pip \
        python38-setuptools \
        unzip \
>>>>>>> 3643b8be18 (New bootstrap container for Rocky Linux 8)
 && pip3 install boto3 \
 && rm -rf /var/cache/yum \
 && yum clean all
{% endblock %}
