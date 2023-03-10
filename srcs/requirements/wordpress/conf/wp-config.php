<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'bducrocq' );

/** Database password */
define( 'DB_PASSWORD', '4242' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('WP_SITEURL', 'https://bducrocq.42.fr');
define('WP_HOME', 'https://bducrocq.42.fr');
define('WP_SITENAME', 'Inception Bducrocq');



/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'dt5z,k-tl@pwX]W$biDhL~-?+uMwhZY`d60%)7)d3ir9<sh[OiLh]/NIuKUGd>q,');
define('SECURE_AUTH_KEY',  '_ZsS<l6LV1F4r=WZQY2.Ur_aH*eSK/0 w.95vCE-|IQ8+#k6b55=8L*=|{lUBx%{');
define('LOGGED_IN_KEY',    '<by okV<QF8o{kfq[|5FC>0(&l#D9NC$R+N/H^j*&qsJXtv<YO~u6*@yVY8+3TBI');
define('NONCE_KEY',        'AFnp}RNv6L<!cBij?I{;qkF~T44LwpF9+-~7ht%n.ptU,6}HJFDD.wL`vc5.&Z>3');
define('AUTH_SALT',        '/EL|)!2Q&cHe-PFN8@v6J|A3sLtue|ar&sK_2pHuV<(eK4rE zGufUv=#a}-C#Qx');
define('SECURE_AUTH_SALT', '97*K{r6|h id0M;=2lUY7>J!6+C0R)LwNr5yp6oyLlfn[pc+|c.maG fOcbin=z|');
define('LOGGED_IN_SALT',   'L!l>n$XSP|~Yf5^G<PY.~ XUlsBK)u>Zk,{s_:Le<C`>yeD*a[GN,%V*JBA6e3p|');
define('NONCE_SALT',       'XiMdd%Sp^+X,?pb~r~-CAo<[]s)W0xhQ64;WbBc.Y[n+F^([A|gQX|p+|Y?&]{*?');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';