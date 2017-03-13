# CLASSIC VIP

VIP QUICKSTART is no longer being maintained by Automattic. Please use [chassis-vip](https://github.com/stuartshields/chassis-vip) for the new setup.

Adds VIP support to Chassis.

This is based on [vip-quickstart](https://github.com/Automattic/vip-quickstart) by Automattic.

We only support PHP 7+ due to WP.com websites being upgraded to PHP 7 recently.

## Installing & Documentation

1. Clone `chassis` i.e: `git clone --recursive https://github.com/Chassis/Chassis chassis`
2. CD into the directory `cd chassis`
2. Clone `config.yaml` into the content folder i.e: `git clone https://github.com/stuartshields/vip-config.git content`
3. Add `10.86.73.80 vip.local` to your `hosts` file and any additional domains you need, use the same IP Address
4. `vagrant up`
5. `git clone git@github.com:stuartshields/chassis-vip.git extensions/vip`
6. `vagrant provision` - Depending on your internet connection, this could take a while as we need to download over 300MB in files.

### Updating Domain Information
You'll need to update the hosts setup before provisioning. Only add top-level domains.

After the provision has finished, go to `Network Admin > Sites` and add the subdomains.

Download the [mu domain mapping](https://wordpress.org/plugins/wordpress-mu-domain-mapping/) plugin if you require top level domains.

### Adding additional extensions
It's recommended that you install the following Chassis extensions

[Imagick](https://github.com/Chassis/Imagick)

[PHPCS & WPCS](https://github.com/Chassis/phpcs)

[Memcache](https://github.com/Chassis/memcache)

[Debugging](https://github.com/Chassis/Debugging)

Once all extensions are added you can now `vagrant provision`
