docker container run -it --rm kyleatpanw/iron-skillet:v2

cd API-Intro

./keygenparse.py 

*** You will be prompted to enter in the IP/FQDN of the FW and user credentials to obtain the API Key ***

*** Copy this API key or create a variable for the API Key to be passed in the examples below ***

var_apikey={API-Key}

cd ..

cd iron-skillet/panos_version_08.0/xml-config-snippets

*** Use this format below as the command syntax ***

panxapi.py -h {{ ip address }} -K {{ api-key }} -S {{ filename.xml }} "{{ xpath }}"

*** Use the API browser on the FW to find the xpath needed ***

*** Here are some examples to import some AV/AS/URL/FB/Vuln Profiles to the FW ***

panxapi.py -h 192.168.55.10 -K $var_apikey -S profiles_virus.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/virus"

panxapi.py -h 192.168.55.10 -K $var_apikey -S profiles_spyware.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/spyware"

panxapi.py -h 192.168.55.10 -K $var_apikey -S profiles_url_filtering.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/url-filtering"

panxapi.py -h 192.168.55.10 -K $var_apikey -S profiles_file_blocking.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/file-blocking"

panxapi.py -h 192.168.55.10 -K $var_apikey -S profiles_vulnerability.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/vulnerability"