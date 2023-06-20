class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQCc5MkFEaT/MDEZEiySCS/Kttw8aO+9ppsEadT5Yp57Naf2N/N1SEmwKHJ4Vb86ikxsRw0AglF98fvj9H/DDoUHwBuLXdRsjS2Ftdy7jb4R1n+ZMV83YmOPv5N6k/vPT8pBkbrr3PHHo7g4h8iSdbunXTcjCPF9dzS/pwHvzaoiYKrCTxwwSQQcfxYJkXGk6rvhXvgx3vNyFH++QiDAzZnNPr3TcroRf/G2Sfw4IZ1CAvNI9lBuu9rX72HHqOURdkfGOZVYcBtdYAfk5ydKA7wAahrl3UUB1Z8j1xWiR8AX2pCymK9jvWscqZVRW6YpJSJP33AJdVWLP4D5NzWhlRdTEszMlyDCI4Q6rvn9vzDKSht4xGauzmt7Y7jTMQsFMdzYJlNXdwOjHk6pMVrAUeMsqK8l4dnj7C87L1bnr243v+HpQ/ZHpi/wue5urf6eWEch2tOULgQ1A30s5gYrMEyLO922+0U9bFmgtCFZm3c+J0m89fm8Hi87zVNpjYDP3n7FKuvwGaNrvpKck6VW8n6rvS3A66W/NTqJcCDskmCHFMF6+GYVB7jbipJ+YWqtsHtbr8h5ymssGo72f3PN5T+gHLy4vgyto13eTdH2YDSazQ0jZJx9Cl2jN9x9QdnpYghmjdMP1onAl9zayQgwtxPoUCx4ZRx6TnSOikcnRo7Y2Q==',
	}  
}
