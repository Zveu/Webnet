while true
do
	sudo zmap -N 35 -p 80 -o list.lst -B 150M
	python title.py list.lst
	cat servers.txt | grep Cisco > Cisco_servers
	cat servers.txt | grep outer > router_servers
	cat servers.txt | grep DSL > dsl_servers
	cat servers.txt | grep etgear > netgear_servers
	cat servers.txt | grep ogin > login_sites
	cat servers.txt | grep IIS > ISS 
	cat ISS | awk ' { print $1 } ' > bluekeep
	cat *_servers | awk ' { print $1 } ' > ROUTERS.lst
done
cat servers.txt | grep RouterOS | awk ' { print $1 } ' > listservers/RoughtOS _servers 

