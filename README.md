# VIP
Adds VIP support to Chassis.

This is based on [vip-quickstart](https://github.com/Automattic/vip-quickstart) by Automattic.

We only support PHP 7+ due to WP.com websites being upgraded to PHP 7 recently.

## Installing & Documentation

1. Clone chassis `chassis` by `git clone --recursive https://github.com/Chassis/Chassis chassis`. DO NOT `vagrant up` just yet
2. Go to `config.yaml`, update the host on line 18
3. On line 43, enable multisite domains - `multisite: subdomains`
4. `vagrant up`
5. `git clone git@github.com:stuartshields/chassis-vip.git extensions/vip`
6. `vagrant provision` - Depending on your internet connection, this could take a while. 

### Updating Domain Information
You'll need to update the hosts setup before provisioning. Only add top-level domains.

After the provision has finished, go to `Network Admin > Sites` and add the subdomains.

### Adding additional extensions
It's recommended that you install the following Chassis extensions

[Imagick](https://github.com/Chassis/Imagick)

[PHPCS & WPCS](https://github.com/Chassis/phpcs)

[Memcache](https://github.com/Chassis/memcache)

[Debugging](https://github.com/Chassis/Debugging)

[Photon](https://github.com/Chassis/Photon)

Once all extensions are added you can now `vagrant provision`





