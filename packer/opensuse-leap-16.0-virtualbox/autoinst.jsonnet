{
    hostname: {
        static: 'opensuse.localdomain',
    },
    localization: {
        keyboard: 'us',
        language: 'en_US.UTF-8',
        timezone: 'UTC',
    },
    network: {
        connections: [
            {
                autoconnect: true,
                id: 'eth0',
                method4: 'auto',
                method6: 'disabled',
                persistent: true,
                status: 'up',
            },
        ],
    },
    product: {
        id: 'openSUSE_Leap',
    },
    root: {
        password: 'vagrant',
    },
    scripts: {
        post: [
            {
                chroot: true,
                content: |||
                    #!/bin/bash
                    echo "root:vagrant" | chpasswd
                    rm -rf /root/.bash_logout
                    mkdir -p /root/.ssh
                    chmod 0700 /root/.ssh
                    echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > /root/.ssh/authorized_keys
                    chmod 0600 /root/.ssh/authorized_keys
                    chown -Rf root:root /root
                    groupadd -g 1000 vagrant
                    useradd -g 1000 -u 1000 -d /home/vagrant -s /bin/bash -m vagrant
                    echo "vagrant:vagrant" | chpasswd
                    rm -rf /home/vagrant/.bash_logout
                    mkdir -p /home/vagrant/.ssh
                    chmod 0700 /home/vagrant/.ssh
                    echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > /home/vagrant/.ssh/authorized_keys
                    chmod 0600 /home/vagrant/.ssh/authorized_keys
                    chown -Rf vagrant:vagrant /home/vagrant
                    mkdir -p /etc/sudoers.d
                    chmod 0755 /etc/sudoers.d
                    echo "vagrant ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/vagrant
                    chmod 0440 /etc/sudoers.d/vagrant
                    chown -Rf root:root /etc/sudoers.d
                    sed -ie "s/^[#\s]*UseDNS.*$/UseDNS no/g" /etc/ssh/sshd_config
                    ssh-keygen -A
                    systemctl enable sshd.service
                    sed -ie "s/^GRUB_DEFAULT=.*/GRUB_DEFAULT=\"0\"/g" /etc/default/grub
                    sed -ie "s/^GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0 systemd.unified_cgroup_hierarchy=1\"/g" /etc/default/grub
                    sed -ie "s/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=\"net.ifnames=0 biosdevname=0 systemd.unified_cgroup_hierarchy=1\"/g" /etc/default/grub
                    grub2-mkconfig -o /boot/grub2/grub.cfg
                    dracut -f
                    netconfig update -f
                    exit 0
                |||,
                name: 'post.sh',
            },
        ],
    },
    software: {
        onlyRequired: true,
        packages: [
            'ca-certificates',
            'cloud-init',
            'curl',
            'e2fsprogs',
            'growpart',
            'insserv-compat',
            'iproute2',
            'kernel-default',
            'kernel-default-devel',
            'openssh',
            'perl',
            'rsync',
            'sudo',
        ],
        patterns: {
            remove: [
                'sssd',
                'virtualbox-guest-tools',
                'virtualbox-kmp-default',
            ],
        },
    },
    storage: {
        drives: [
            {
                partitions: [
                    {
                        filesystem: {
                            path: '/boot',
                            type: 'ext4',
                        },
                        size: '8192 MiB',
                    },
                    {
                        filesystem: {
                            path: 'swap',
                            type: 'swap',
                        },
                        size: '8192 MiB',
                    },
                    {
                        filesystem: {
                            path: '/',
                            type: 'ext4',
                        },
                    },
                ],
            },
        ],
    },
    user: {
        fullName: 'vagrant',
        password: 'vagrant',
        userName: 'vagrant',
    },
}
