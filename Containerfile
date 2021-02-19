FROM registry.fedoraproject.org/f33/fedora-toolbox:latest

ADD ringcentral_x86_64.rpm ./
ADD zoom_x86_64.rpm ./

RUN set pipefail && \
	dnf update --all -y && \
	dnf localinstall -y "ringcentral_x86_64.rpm" "zoom_x86_64.rpm" && \
	dnf clean all
  
# build with `podman build -t ringcentral-image .
# init toolbox with `toolbox create -i ringcentral-image -c ringcentral
# run in toolobox with `toolbox run -c ringcentral ringcentral`
