Sybase Scripts
==============

I wrote these scripts in order to work better with Sybase on CentOS, but these scripts are also tested with Fedora. It should work on any RHEL-based distros - my tests with Debian weren't good with ODBC drivers, then I recommend CentOS or Fedora for this case. These configuration files were based on the original content of Sybase environments and a bit polished in order to integrate better with modern Linux distros (`systemd`, `ld.so.conf` for unixODBC and more).

For now, I wrote integrations for Sybase 9 ASA and Sybase 12 ASE, the 2 Sybase versions that I have access. Feel free to request more versions, I just need the environment scripts - `asa_config.sh` and `asa_config.csh` for Sybase 9 ASA, `sa_config.sh` and `sa_config.csh` for Sybase 12 ASE.

Setup
-----

* Clone the repository on `/opt` folder

```
cd /opt && git checkout https://github.com/timoteoramos/sybase-scripts.git
```

* Run the desired installation script (`install-9.sh` or `install-12.sh`)

```
bash /opt/sybase-scripts/bin/install-12.sh
```

* The desired environment will be properly configurated. To ensure that all works fine, log out and then log in again to run the environment script located on `/etc/profile.d/sybase.sh`. You just need to configure the `/opt/sybase-scripts/config/db.sh` to fit your database settings.

* The database home must be located on `/var/lib/sybase` and must have the right permissions. You can run the `/opt/sybase-scripts/bin/fix-permissions.sh` script in order to fix this. It will read your `db.sh` configuration and run the needed `chmod` commands.
