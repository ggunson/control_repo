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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDt9M+iLwcS7By9nduvdTckLNgQ2neqSTOsGI/+EOIiLrcG+SWVSJ75NrzUU0nYm2UCrUUaPNnFeHsmL+ErTW9At24PaC46dYQVLR3IUOl7c3RUAJbKl13RE34PXYD5PE+c+pl+qYxOV8vZv7elrewBMJgvIKOo4tOutXiUbGKGk4H5rRwtsqTeTbj3bDGcGvfq0LFjoEtJ7OzbiJX7t8jTGCT2L4CsG+WlomMeeVi+FL4UYUURCoVatYZCl+UvOE9FlaJPENMEqiyt5UF5Sy9My6mJsczFWAvBFqtM5gL/3ITOTjAHZ+MWHXobI3e4CJeJDDRch+9lSyrDlYDUk/Jd',
	}
}
