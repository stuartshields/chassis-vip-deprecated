<?php
// Note: Database constants are set in the automatically-generated
// local-config-db.php. Change these via your config.local.yaml instead.

// Loopback connections can suck, disable if you don't need cron
# define( 'DISABLE_WP_CRON', true );

// You'll probably want Automatic Updates disabled during development
define( 'AUTOMATIC_UPDATER_DISABLED', true );

define('JETPACK_DEV_DEBUG', true);

define( 'WP_DEBUG_LOG', true );
define( 'WP_DEBUG_DISPLAY', false );
define( 'SCRIPT_DEBUG', true );

require __DIR__ . '/config/roles.php';
require __DIR__ . '/config/vip-config.php';
