docker container run -it --rm kyleatpanw/iron-skillet:v2

cd API-Intro

./keygenparse.py 

*** Copy this API key ***

cd ..

cd iron-skillet/panos_version_08.0/xml-config-snippets

*** Use this format below as the command syntax ***

panxapi.py -h {{ ip address }} -K {{ api-key }} -S {{ filename.xml }} "{{ xpath }}"

*** Use the API browser on the FW to find the xpath needed ***

panxapi.py -h 192.168.55.10 -K <API-KEY> -S profiles_virus.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/virus"

panxapi.py -h 192.168.55.10 -K <API-KEY> -S profiles_spyware.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/spyware"

panxapi.py -h 192.168.55.10 -K <API-KEY> -S profiles_url_filtering.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/url-filtering"

panxapi.py -h 192.168.55.10 -K <API-KEY> -S profiles_file_blocking.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/file-blocking"

panxapi.py -h 192.168.55.10 -K <API-KEY> -S profiles_vulnerability.xml "/config/devices/entry[@name='localhost.localdomain']/vsys/entry[@name='vsys1']/profiles/vulnerability"