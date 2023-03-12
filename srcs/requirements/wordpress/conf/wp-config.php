<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', $WORDPRESS_DB_NAME );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', $WORDPRESS_DB_USER );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', $WORDPRESS_DB_PASSWORD );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', $WORDPRESS_DB_HOST );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );


/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ';o~?mRDb$pyhRxzESm)so,%HhtH9_Ygilq}N?*g4<R6}gVBx4y(_?cLfJ8_Cq-=*' );
define( 'SECURE_AUTH_KEY',  '2=$Us?!SPZ Ai+#Q&D5FZ%$@i5{2c$R-,quv7jDG)DJ+ Ob}^@xj;_U)RIICI_h5' );
define( 'LOGGED_IN_KEY',    ' lTK_^I{9XW%.gfJD)=]oHT!o;vdGAn,^8>EvEA^o>#& Z)_!-9m{(v(hfaNR2&&' );
define( 'NONCE_KEY',        '[q#vDYHW*}1>0zfztxR@[BWOp&t2(YeZXP9d+oe]e&H(XPD6]8&zyZ9pzQnVC+oE' );
define( 'AUTH_SALT',        'Ag`!mCMS4O|E#l6&xwH_JLPzNRZ5X^d7AXebxcOpVr|x/*>&qSr*sa2#jM-&(Rg.' );
define( 'SECURE_AUTH_SALT', ']sov<YQW]yQJxF&3,$L1n3VG%Zr[vK-Mhv8D6e_crLqSDy&p15Gnt5Wdcjqj,#qG' );
define( 'LOGGED_IN_SALT',   'tl7;ENoPqykSx%OL7E%Nj,{M^?q $fF7g#)PT|7)Ootdq]H1o-*VPVfym;z)~6/U' );
define( 'NONCE_SALT',       '{C^KJ^30Dv/YsRNJTEh-0S5R{mA>V51CL|sMOpB;< %2OlH{Y(]m`U=gzU#gTg4X' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );