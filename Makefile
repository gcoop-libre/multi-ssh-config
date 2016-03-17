config: x
	chmod +x sshconfig
	./sshconfig

x:
	chmod +x sshconfig

test_all: x
	./sshconfig -c config-example

test_agent: x
	./sshconfig -c config-agent

find_agent:
	grep -lir ForwardAgent ~/.ssh/config.d/* | while read i;do grep -i IdentityFile "$$i" >/dev/null || echo "$$i";done

