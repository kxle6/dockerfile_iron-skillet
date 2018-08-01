This is a minimal container image that will install git, python, py-pip, and curl.

This image will also download the latest pandevice for an introduction using Python and our API.  The examples in the iron-skillet-pan-api-instructions.md walk you through how to import xml partial configurations, such as AV/AS/URL/FB/Vuln Profiles, to the FW.  There are other best practice partial configurations in the iron-skillet/panos_version_08.0/xml-config-snippets folder. The instructions below are how to run the container that has the perquisites already installed.

To run this container image, see example commands below:

docker container run -it kyleatpanw/iron-skillet:v2

To run the container and delete the container when you're done use the following command as an example:

docker container run -it --rm kyleatpanw/iron-skillet:v2

To run the container and copy your working directory to the container, and delete the container when you're done, use the example:

docker run -it --rm -v $(pwd):/home/ -w /home/ kyleatpanw/iron-skillet:v2

To run the container and copy a folder or directory to the container, and delete the container when you're done, use the example:

docker run -it --rm -v /Users/blahblah/templates:/home -w /home kyleatpanw/iron-skillet:v2

When you are done using the container, use the command below:

exit

After exiting the container, if you want to reuse the the same container, use the following command:

docker container start -ai (name or container ID)