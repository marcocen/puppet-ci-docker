FROM centos
COPY puppet6.repo /etc/yum.repos.d/puppet6.repo
COPY RPM-GPG-KEY-puppet6-release /etc/pki/rpm-gpg/RPM-GPG-KEY-puppet6-release
RUN yum install -y puppet-agent
RUN /opt/puppetlabs/puppet/bin/gem install puppet-lint
RUN yum install -y openssh-clients
