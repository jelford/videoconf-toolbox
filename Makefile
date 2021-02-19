
toolbox: ringcentral_x86_64.rpm zoom_x86_64.rpm Containerfile
	podman stop -i vctoolbox 
	toolbox rm vctoolbox
	toolbox rmi vctoolbox-image
	podman build -t vctoolbox-image .
	toolbox create -i vctoolbox-image -c vctoolbox

clean:
	rm "*.rpm"
	podman stop -i vctoolbox
	toolbox rm vctoolbox
	toolbox rmi vctoolbox-image


ringcentral_x86_64.rpm:
	curl -sSLo "ringcentral_x86_64.rpm" "https://ringcentral.zoom.us/client/latest/ringcentral_x86_64.rpm"

zoom_x86_64.rpm:
	curl -sSLo "zoom_x86_64.rpm" "https://zoom.us/client/latest/zoom_x86_64.rpm"


