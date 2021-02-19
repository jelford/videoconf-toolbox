
toolbox: ringcentral_x86_64.rpm zoom_x86_64.rpm Containerfile
	podman stop -i ringcentral
	toolbox rm ringcentral
	toolbox rmi ringcentral-image
	podman build -t ringcentral-image .
	toolbox create -i ringcentral-image -c ringcentral

clean:
	rm "*.rpm"
	podman stop -i ringcentral
	toolbox rm ringcentral
	toolbox rmi ringcentral-image


ringcentral_x86_64.rpm:
	curl -sSLo "ringcentral_x86_64.rpm" "https://ringcentral.zoom.us/client/latest/ringcentral_x86_64.rpm"

zoom_x86_64.rpm:
	curl -sSLo "zoom_x86_64.rpm" "https://zoom.us/client/latest/zoom_x86_64.rpm"


