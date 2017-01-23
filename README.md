# VIP
Adds VIP support to Chassis.

This is based on [vip-quickstart](https://github.com/Automattic/vip-quickstart) by Automattic.

We only support PHP 7+ due to WP.com websites being upgraded to PHP 7 recently.

## Installing & Documentation
Clone VIP into the extensions directory of Chassis
1. `git clone git@github.com:stuartshields/chassis-vip.git vip`
2. `vagrant provision`

Due to the way that extensions are loaded in Chassis and the extra extensions that we use, you'll need to repeat step 2 twice.
