'******************************************************************************
' Language file - Coral Series - French
'******************************************************************************
'- Entries in this language file have the following format:
'- Const name  =  "Text to be displayed" 
'- Translate and change only the "Text to be displayed" part
'- For example this line:
'- Const lang_about                     = "About" 
'- Chinese translation:
'- Const lang_about                     = "關於" 
'------------------------------------------------------------------------------

'******************************************************************************
' User Configuration
'******************************************************************************

Const lang_view_www   = "Voir www"   'User button text
Const lang_view_ssl   = "Voir ssl"   'User button text

'-------------------------------------------------- End User Configuration ---

'******************************************************************************
' Messages common functions
'******************************************************************************

Const lang_cf_title1            = "MySQL Créer une base de"
Const lang_cf_str1              = "Il existe déjà une base de données avec ce nom"

Const lang_cf_title2            = "Retirez la base de données MySQL"
Const lang_cf_str2              = "Il n'y a aucune base de données avec ce nom"

Const lang_cf_title3            = "fichier demandé"
Const lang_cf_str3              = "Introuvable"

'******************************************************************************
' Initial Start Up
'******************************************************************************


'*** Space Check ==============================================================

Const lang_space_popup_title1         = "espace détecté!"
lang_space_popup_str1                 = _
"Un espace a été détecté dans le nom du dossier menant à dossier UniServer"            & vbCRLF & vbCRLF &  _
"Malheureusement espaces ne sont pas autorisés dans les noms de chemin"                & vbCRLF & _
"S'il vous plaît corriger et réessayer."                                               & vbCRLF & vbCRLF &  _
"Les raisons de cette restriction:"                                                    & vbCRLF & _
"Capacité à exécuter des applications héritées."                                       & vbCRLF & _
"Cela évite également restreint les permissions d'écriture dans C: \ Program Files."   & vbCRLF & vbCRLF &  _
"Note:"                                                                                & vbCRLF & _
"Si vous souhaitez exécuter le serveur uniforme contenant des espaces dans le chemin"  & vbCRLF & _
"utiliser un lecteur virtuel, comme expliqué dans run_on_drive_w.txt documents"        & vbCRLF & _
"situé dans le dossier UniServer alternative_control \. convient uniquement"           & vbCRLF & _
"lorsque les serveurs sont gérés comme un programme"

'*** Pre Check ================================================================

Const lang_pre_popup_title1         = "Ports d'avertissement dans l'utilisation!"
Const lang_pre_in_use               = "Les ports suivants sont utilisés:"
Const lang_pre_port_number          = "Le numéro de port"
Const lang_pre_pid                  = "PID"
Const lang_pre_process_name         = "nom du processus"
Const lang_pre_path_to_process      = "Chemin d'accès au processus de"
lang_pre_popup_str1                 = _
"Pour démarrer le serveur uniforme, les ports ci-dessus doit être libre."  & vbCRLF &  _
"Soit stop & désinstaller l'application en conflit"                        & vbCRLF &  _
"ou de déplacer le serveur uniforme à différents ports."

Const lang_pre_popup_title2         = "Changer Mot de passe MySQL!"
lang_pre_popup_str2                 = _
"Pour un serveur de développement il n'ya pas de besoin réel de "             & vbCRLF & _
"changer le mot de passe MySQL même si elle est bonne"                        & vbCRLF & _
"la pratique de le faire."                                                    & vbCRLF & vbCRLF &  _
"Si vous allez utiliser vos serveurs de production"                           & vbCRLF & _ 
"ou les mettre sur l'Internet ou un intranet, il est"                         & vbCRLF & _ 
"impératif de définir un nouveau mot de passe MySQL. La valeur par défaut"    & vbCRLF & _
"mot de passe est publiée, de sorte que votre serveur est déjà"               & vbCRLF & _
"compromised."                                                                & vbCRLF & vbCRLF &  _
"Cliquez YES de changer de mot de passe (ouvre une nouvelle fenêtre)"         & vbCRLF &  _
"Ou NO de sauter configuration mot de passe."

Const lang_pre_popup_title4         = "Start-up options sauté!"
lang_pre_popup_str4                 = _
"Vous avez sauté une ou plusieurs options de configuration de démarrage."     & vbCRLF &  _ 
"La prochaine fois que vous commencez à Coral vous serez de nouveau invité."  & vbCRLF & vbCRLF &  _
"Vous pouvez désactiver incitant par la mise en nag_user = false"             & vbCRLF &  _
"dans config_tracker.ini"                                                     & vbCRLF & vbCRLF &  _
"Alternativement:"                                                            & vbCRLF &  _
"Cliquez YES pour désactiver automatiquement incitant"                        & vbCRLF &  _
"Cliquez NO pour être invité au prochain démarrage du serveur"  

'*** ZoneAlarm ================================================================

Const lang_za_popup_title1         = "Attention ZoneAlarm détecté!"
lang_za_popup_str1                 = _
"Les conflits entre applications ZoneAlarm avec l'Apache"      & vbCRLF &  _ 
"produisant un écran bleu de la mort quand Apache est fermé."  & vbCRLF & vbCRLF &  _
"EXIT Recommandation ZoneAlarm avant de fermer Apache"         & vbCRLF &  _
"ou de préférence désinstaller ZoneAlarm."       

'******************************************************************************
' Main menus - Program and Service
'******************************************************************************

'*** Run As Program ===========================================================

Const lang_legend_start_stop_servers = "Démarrer/Arrêter serveurs" 
Const lang_start_apache              = "Démarrer Apache"
Const lang_stop_apache               = "Arrêtez Apache"
Const lang_start_mysql               = "Démarrer MySQL" 
Const lang_stop_mysql                = "Arrêtez MySQL" 
Const lang_start_both                = "démarrer les deux"
Const lang_stop_both                 = "arrêter les deux"

Const lang_program_title1            = "Démarrer Apache erreur"
Const lang_program_str1              = "Impossible de démarrer le serveur Apache"

Const lang_program_title2            = "Stop Error Apache"
Const lang_program_str2              = "Impossible d'arrêter le serveur Apache"

Const lang_program_title3            = "Démarrer MySQL Error"
Const lang_program_str3              = "Impossible de démarrer le serveur MySQL"

Const lang_program_title4            = "Stop Error MySQL"
Const lang_program_str4              = "Impossible d'arrêter le serveur MySQL"

'*** Run As Service ===========================================================

Const lang_legend_start_stop_services  = "Démarrer/Arrêter les services"

Const lang_install_apache_service      = "Installer Apache service" 
Const lang_uninstall_apache_service    = "Désinstaller Apache service"
Const lang_start_apache_service        = "Démarrer Apache service"
Const lang_stop_apache_service         = "Arrêtez Apache service" 

Const lang_install_mysql_service       = "Installez le service MySQL"
Const lang_uninstall_mysql_service     = "Désinstaller le service MySQL"
Const lang_start_mysql_service         = "Démarrer le service MSQL"
Const lang_stop_mysql_service          = "Arrêtez le service MySQL"

Const lang_start_both_services       = "Installer / Exécuter Apache MySQL et Services" 
Const lang_stop_both_services        = "Stop / Désinstaller Apache MySQL et Services" 

'*** Common Program and Service ===============================================

Const lang_server_utilities          = "Utilitaires serveur" 
Const lang_mysql_console             = "MySQL Console"
Const lang_server_status             = "Statut des serveurs"
Const lang_server_configuration      = "Configuration du serveur"
Const lang_multi_servers             = "Serveurs multi" 
Const lang_about                     = "À propos"

Const lang_about_popup_title1       = "À propos"
lang_about_popup_str1               = _
"Le contrôle du serveur utilise Windows ETS et le langage de script"   & vbCRLF &  _
"VBScript. Cette combinaison permet au serveur Uniform"                & vbCRLF &  _
"ontrôle et de menus pour être facilement modifiés sans"               & vbCRLF &  _
"nécessaire pour la compilation. En outre, les différentes langues"    & vbCRLF &  _
"sont plus facilement pris en charge."


Const lang_view_php_info             = "Voir phpinfo"
Const lang_phpmyadmin                = "phpMyAdmin"
Const lang_apache_syntax_check       = "Vérifier la syntaxe Apache"         '- Button and message box title
Const lang_server_documentation      = "documentation du serveur" 
Const lang_select_language           = "        Sélectionnez la langue" 
Const lang_select_language_spacer    = "--------------------------------------"

Const lang_documentation_popup_title       = "Documentation"
lang_documentation_popup_str               = _
"Désolé cette page de documentation"             & vbCRLF &  _
"n'est pas disponible dans votre langue."


'*** Server Status ============================================================

Const lang_server_status_page_title  = "Statut des serveurs"
Const lang_ss_general                = "Situation générale" 
Const lang_general_1a                = "Votre adresse IP sur Internet"
Const lang_general_2a                = "Accessible à partir d'Internet" 
Const lang_general_3a                = "État d'exécution Cron"
Const lang_general_4a                = "PHP INI: php.ini fichier"
Const lang_general_5a                = "Nom du service Cron"

Const lang_general_6a                = "UniServer nouvelle version"
Const lang_general_6b                = "indisponibles"
Const lang_general_6c                = "courant"

Const lang_ss_apache_server          = "serveur Apache"
Const lang_apache_1a                 = "Apache le port"
Const lang_apache_2a                 = "Apache SSL le port" 
Const lang_apache_3a                 = "Nom de l'exécutable Apache"
Const lang_apache_4a                 = "Apache service de noms" 
Const lang_apache_5a                 = "Apache SSL serveur" 
Const lang_apache_6a                 = "Apache lancer état" 
Const lang_apache_7a                 = "Installation d'Apache état"

Const lang_ss_mysql_server           = "Le serveur MySQL"
Const lang_mysql_1a                  = "port MySQL"
Const lang_mysql_2a                  = "Nom de l'exécutable MySQL"
Const lang_mysql_3a                  = "MySQL service de noms"
Const lang_mysql_4a                  = "MySQL tourne état"
Const lang_mysql_5a                  = "MySQL installer le statut"

Const lang_ss_port_status            = "Statut du port"
Const lang_port_1a                   = "Apache le port" 
Const lang_port_2a                   = "Apache port SSL" 
Const lang_port_3a                   = "port MySQL" 

Const lang_ss_get_ip                   = "obtenir IP"
Const lang_ss_run_access_check         = "Exécuter vérifiez"
Const lang_ss_yes                      = "Oui" 
Const lang_ss_no                       = "Non"
Const lang_ss_running                  = "Exécution"
Const lang_ss_not_running              = "ne fonctionne pas"
Const lang_ss_development              = "développement" 
Const lang_ss_production               = "Production" 
Const lang_ss_enabled                  = "Activé"
Const lang_ss_disabled                 = "handicapés" 
Const lang_ss_free_to_install          = "Libre à installer" 
Const lang_ss_installed_as_service     = "Installé comme un service"
Const lang_ss_installed_as_program     = "Installé comme un programme"
Const lang_ss_is_free_to_use           = "Est libre d'utiliser"
Const lang_ss_in_use_by_this_server    = "Lors de l'utilisation par ce serveur" 
Const lang_ss_in_use_by_another_server = "En cours d'utilisation par un autre serveur"

'*** Move Servers Multi-servers ===============================================

Const lang_multi_server_page_title     = "Déplacer des serveurs multi-serveurs"
Const lang_multi_old_heading           = "--Vieux--"
Const lang_multi_new_heading           = "-Nouveau-"
Const lang_multi_reload                = "Recharger"
Const lang_multi_increment             = "incrément"
Const lang_multi_run                   = "Fonctionner des serveurs Déplacer" 
Const lang_multi_invalid               = "entrée invalide"
Const lang_multi_please_correct        = "S'il vous plaît correcte"

'##############################################################################
' Server configuration - Main Menu 
'##############################################################################

'******************************************************************************
' General - Server configuration
'******************************************************************************

lang_m1_general          = " général"
lang_m2_general          = " Changer les ports. Apache et MySQL"
lang_m3_general          = " Effacer les fichiers journaux du serveur"

lang_m4_general_www         = " Www Root - Changement des mots de passe et l'accès"
lang_m5_general_ssl         = " SSL Root - Changement des mots de passe et l'accès"
lang_m6_general_phpmyadmin  = " PhpMyAdmin Root - Changer le type d'accès"

lang_m20_general_spacer  = "---------------------------------------------------------------"

'*** Sub-General Change ports, Apache and MySQL ===============================

lang_port_change_reload         = "Recharger"
lang_port_change_change         = "changement"
lang_port_change_change_all     = "Tout modifier"
lang_port_change_change_title   = "Port/s Changed"
lang_port_change_changed        = "Ou les ports ont été modifiés"

'*** Sub-General Clear Server Log Files ======================================
Const lang_logs_title             = "Journaux du serveur Effacer"
Const lang_logs_frame             = "Sélectionnez Connexion"

Const lang_log_apache_error       = "Journal des erreurs Apache"
Const lang_log_apache_access      = "Logs d'accès Apache"
Const lang_log_ssl_apache_error   = "Log d'Apache erreur SSL"
Const lang_log_ssl_apache_access  = "Log d'Apache Access SSL"

Const lang_log_mysql_error        = "Error Log MySQL"
Const lang_log_cron               = "Connexion cron"
Const lang_log_DTDNS              = "DTDNS Connexion"
Const lang_log_dbbackup           = "Connexion Database Backup"

Const lang_log_select_all_bt      = "Sélectionnez tous les"
Const lang_log_clear_bt           = "Effacer la sélection"

Const lang_log_popup_title1       = "serveur Apache"
lang_log_popup_str1               = _
"Serveur Apache est en marche. Les fichiers journaux ne peut pas être effacé."      & vbCRLF  & vbCRLF &  _  
"S'il vous plaît arrêter Apache et essayez à nouveau."

Const lang_log_popup_title2       = "MySQL tournant"
lang_log_popup_str2               = _
"Le serveur MySQL est en marche. Le fichier journal ne peut pas être effacé."      & vbCRLF  & vbCRLF &  _  
"S'il vous plaît arrêter MySQL et essayez à nouveau."

Const lang_log_popup_title3       = "Contenu Effacer des fichiers de log"
lang_log_popup_str3               = _
"Les fichiers journaux peuvent devenir très grandes de cette utilisation"  & vbCRLF &  _ 
"option de menu pour supprimer le contenu d'un"                            & vbCRLF &  _ 
"sélectionnés fichier journal."                                            & vbCRLF & vbCRLF &  _  
"Sélectionnez un fichier journal et cliquez sur ""Clear Button"""          & vbCRLF & vbCRLF &  _  
"Vous pouvez également cliquer ""Select all"" bouton et"                   & vbCRLF &  _ 
"puis cliquez sur ""Clear Button"""                                        & vbCRLF & vbCRLF &  _  
"Note 1:"                                                                  & vbCRLF &  _ 
"Fichiers ne sont pas supprimés seul contenu effacé."                      & vbCRLF & vbCRLF &  _  
"Note 2:"                                                                  & vbCRLF &  _ 
"Arrêtez serveurs pour effacer Apache et MySQL"                            & vbCRLF &  _ 
"les fichiers journaux ." 

'*** Sub-General Root www - Change passwords and access ========================
Const lang_passwords_page_title_www          = "Www Root - Changement des mots de passe et l'accès"
Const lang_passwords_www_legend              = "UniServer dossier racine WWW \ www "

Const lang_passwords_name_www                = "Nom:"
Const lang_passwords_password_www            = "Mot de passe:"
Const lang_passwords_edit_www_bt             = "Modifier"
Const lang_passwords_change_password_www_bt  = "hanger le mot de passe le nom"
Const lang_passwords_reload_www              = "Recharger les valeurs du fichier"

Const lang_www_htaccess1_title               = "Nom ou mot de passe vierge"
Const lang_www_htaccess1_str                 = "Les deux un nom et un mot de passe requis"

Const lang_www_htaccess2_title               = "Nom et Mot de passe"
Const lang_www_htaccess2_str                 = "Mise à jour"

Const lang_passwords_state_www_legend        = "Changement www Etat "

Const lang_www_password                      = "Mot de passe:"
Const lang_www_password_disabled             = "Mot de passe handicapés"
Const lang_www_password_enabled              = "Mot de passe Enabled"
Const lang_www_access                        = "accès:"
Const lang_www_access_local                  = "accès local"
Const lang_www_access_local_intranet         = "Locales et Accès Intranet"
Const lang_www_access_internet               = "Accès local, intranet et Internet"

Const lang_passwords_test_www_bt             = "Test"

Const lang_www_passwords_help_title          = "Définir l'accès www. Optionnellement Mot de passe protéger"
lang_www_passwords_help_str                  = _
"Overview:"                                                                             & vbCRLF & _
"Cette page vous permet de mettre votre serveur en ligne ou restreindre l'accès"        & vbCRLF & _
"d'hôte local (par défaut) ou à localhost et Intranet. "                                & vbCRLF & _
"En option, vous pouvez définir un nom et un mot de passe pour accéder à www dossier"   & vbCRLF & vbCRLF & _
"1] bouton ""Edit"" vous permet d'éditer directement un fichier de configuration."      & vbCRLF & vbCRLF & _
"2] Après avoir entré un nom et un mot de passe, cliquez ""Change name"                 & vbCRLF & _
"   password"" bouton. Cette mise à jour le fichier de mot de passe correspondant."     & vbCRLF & vbCRLF & _
"3] Activer et désactiver la protection mot de passe:"                                  & vbCRLF & _
"   Utilisez les boutons radio pour activer ou désactiver l'authentification."          & vbCRLF & _
"   Mot de passe handicapés: l'authentification n'est pas requise. "                    & vbCRLF & _
"   Mot de passe activée: Nom et mot de passe sont requis pour l'accès au serveur."     & vbCRLF & vbCRLF & _
"4] L'accès local ou local et Intranet ou sur Internet:"                                & vbCRLF & _
"   Utilisez les boutons radio pour sélectionner le mode d'accès requis"                & vbCRLF & _
"   Accès local: Restriction de l'accès au serveur de l'utilisateur local. "            & vbCRLF & _
"   Locales et Accès Intranet: Permettre aux utilisateurs de votre accès à l'intranet"  & vbCRLF & _
"   Accès local, intranet et Internet: Met votre serveur en ligne "         

'*** Sub-General Root ssl - Change passwords and access ========================
Const lang_passwords_page_title_ssl          = "SSL Root - Changement des mots de passe et l'accès"
Const lang_passwords_ssl_legend              = "UniServer dossier racine SSL\ssl"

Const lang_passwords_name_ssl                = "Nom:"
Const lang_passwords_password_ssl            = "Mot de passe:"
Const lang_passwords_edit_ssl_bt             = "Modifier"
Const lang_passwords_change_password_ssl_bt  = "Changer le mot de passe le nom"
Const lang_passwords_reload_ssl              = "Recharger les valeurs du fichier"

Const lang_ssl_htaccess1_title               = "Nom ou mot de passe vierge"
Const lang_ssl_htaccess1_str                 = "Les deux un nom et un mot de passe requis"

Const lang_ssl_htaccess2_title               = "Nom et Mot de passe"
Const lang_ssl_htaccess2_str                 = "Mise à jour"

Const lang_passwords_state_ssl_legend    = "Changer le statut SSL "

Const lang_ssl_password                      = "Mot de passe:"
Const lang_ssl_password_disabled             = "Mot de passe handicapés"
Const lang_ssl_password_enabled              = "Mot de passe Enabled"
Const lang_ssl_access                        = "accès:"
Const lang_ssl_access_local                  = "accès local"
Const lang_ssl_access_local_intranet         = "Locales et Accès Intranet"
Const lang_ssl_access_internet               = "Accès local, intranet et Internet"

Const lang_passwords_test_ssl_bt             = "Test"

Const lang_ssl_passwords_help_title          = "Définir l'accès SSL. Optionnellement Mot de passe protéger"
lang_ssl_passwords_help_str                  = _
"Overview:"                                                                             & vbCRLF & _
"Cette page vous permet de mettre votre ssl serveur en ligne ou restreindre l'accès"    & vbCRLF & _
"d'hôte local (par défaut) ou à localhost et Intranet. "                                & vbCRLF & _
"En option, vous pouvez définir un nom et un mot de passe pour accéder à www dossier"   & vbCRLF & vbCRLF & _
"1] bouton ""Edit"" vous permet d'éditer directement un fichier de configuration."      & vbCRLF & vbCRLF & _
"2] Après avoir entré un nom et un mot de passe, cliquez ""Change name"                 & vbCRLF & _
"   password"" bouton. Cette mise à jour le fichier de mot de passe correspondant."     & vbCRLF & vbCRLF & _
"3] Activer et désactiver la protection mot de passe:"                                  & vbCRLF & _
"   Utilisez les boutons radio pour activer ou désactiver l'authentification."          & vbCRLF & _
"   Mot de passe handicapés: l'authentification n'est pas requise. "                    & vbCRLF & _
"   Mot de passe activée: Nom et mot de passe sont requis pour l'accès au serveur."     & vbCRLF & vbCRLF & _
"4] L'accès local ou local et Intranet ou sur Internet:"                                & vbCRLF & _
"   Utilisez les boutons radio pour sélectionner le mode d'accès requis"                & vbCRLF & _
"   Accès local: Restriction de l'accès au serveur de l'utilisateur local. "            & vbCRLF & _
"   Locales et Accès Intranet: Permettre aux utilisateurs de votre accès à l'intranet"  & vbCRLF & _
"   Accès local, intranet et Internet: Met votre serveur en ligne "  

'*** Sub-General Root phpmyadmin - Change passwords and access ========================
Const lang_passwords_page_title_phpmyadmin          = "phpMyAdmin - Changement d'accès"
Const lang_passwords_phpmyadmin_legend              = "accès phpMyAdmin"

Const lang_phpmyadmin_access_local                  = "Local"
Const lang_phpmyadmin_access_local_intranet         = "Intranet + mot ​​de passe"
Const lang_phpmyadmin_access_internet               = "Internet + passe + SSL"

Const lang_passwords_phpmyadmin_legend2             = "Option Modifier les fichiers de configuration"
Const lang_passwords_edit1_phpmyadmin_bt            = "Afficher ou modifier .htaccess"
Const lang_passwords_edit2_phpmyadmin_bt            = "Afficher ou modifier config.inc.php"
Const lang_passwords_test_phpmyadmin_bt             = "Test - Afficher dans le navigateur"

Const lang_phpmyadmin_passwords_title1              = "SSL n'est pas activée"
lang_phpmyadmin_passwords_str1                      = _
"Cette option n'est pas disponible!"                                                   & vbCRLF & vbCRLF & _
"Permettre l'accès à Internet à phpMyAdmin nécessite SSL soit activé."                 & vbCRLF & _
"SSL crypte toutes les transactions à travers l'Internet."                             & vbCRLF & vbCRLF & _
"Aucune action n'a été effectuée autre que de retourner à l'état d'accès précédente."  & vbCRLF & _
"Relancez cette option de menu après l'activation de SSL."                             & vbCRLF & vbCRLF & _
"Note:"                                                                                & vbCRLF & _
"SSL est automatiquement activé lorsque vous créez un certificat de serveur."


Const lang_phpmyadmin_passwords_help_title          = "Définir l'accès phpmyadmin."
lang_phpmyadmin_passwords_help_str                  = _
"Vue d'ensemble:"                                                                                       & vbCRLF & _
"Ce menu vous permet de modifier l'accès phpMyAdmin et pour afficher ou modifier manuellement"          & vbCRLF & _
"associé les fichiers de configuration."                                                                & vbCRLF & vbCRLF & _
"1] Local"                                                                                              & vbCRLF & _
"L'accès local est la valeur par défaut. Cela limite l'accès à localhost phpMyAdmin"                    & vbCRLF & _
"ce qui signifie qu'il est accessible uniquement à partir du PC sur lequel il s'exécute. En plus de"    & vbCRLF & _
"l'accès au serveur MySQL sans mot de passe est requis, il utilise automatiquement la racine."          & vbCRLF & vbCRLF & _
"2] Intranet + mot ​​de passe"                                                                            & vbCRLF & _
"Cette option permet aux utilisateurs d'accéder intranet au serveur MySQL pour accéder"                 & vbCRLF & _
"tous les utilisateurs doivent entrer un nom et un mot de passe. "                                      & vbCRLF & vbCRLF & _
"3] Internet + passe + SSL"                                                                             & vbCRLF & _
"Cette option permet aux utilisateurs d'accéder à Internet au serveur MySQL pour accéder"               & vbCRLF & _
"tous les utilisateurs doivent entrer un nom et un mot de passe. Toutes les transactions se produisent" & vbCRLF & _
"via une connexion sécurisée cryptée."                                                                  & vbCRLF & _
"Remarque: Cette option est désactivée jusqu'à ce qu'un certificat de serveur a été généré."

'******************************************************************************
' Apache - Server configuration
'******************************************************************************

lang_m1_apache   = " Apache"
lang_m2_apache   = " Modifier la configuration de base"
lang_m3_apache   = " Modifier le fichier httpd.conf"
lang_m4_apache   = " Modifier httpd-ssl.conf"
lang_m5_apache   = " Afficher le journal d'erreur fichier error.log"
lang_m6_apache   = " Voir access.log fichier Access log"
lang_m7_apache   = " Voir error.log SSL fichier journal des erreurs"
lang_m8_apache   = " Voir access.log SSL fichier Access log"
lang_m9_apache   = " Générer certificat"
lang_m10_apache  = " Vhosts Apache"
lang_m12_apache  = " Apache server-status"
lang_m13_apache  = " Apache server-info"
lang_m14_apache  = " Apache Modules Activer/Désactiver"
lang_m20_apache_spacer  = "----------------------------------------------------"

'*** Sub-Apache Edit Basic Configuration ======================================

Const lang_ab_page_title              = "Base de configuration d'Apache"
Const lang_ab_legend                  = "Paramètres couramment modifiés"
Const lang_ab_server_name             = "nom du serveur" 
Const lang_ab_admin_email             = "Email Server Admin" 
Const lang_ab_directory_indexs        = "Fichiers index de répertoire" 
Const lang_ab_server_side_includes    = "Server Side Includes" 
Const lang_ab_server_signature        = "Signature du serveur" 
Const lang_ab_listen                  = "Ecoutez le port" 
Const lang_ab_update_configuration_bt = "Mise à jour de configuration" 
Const lang_ab_help_bt                 = "Aide" 

Const lang_ab_help_title              = "Base de configuration d'Apache"
lang_ab_help_str                      = _
"Ce formulaire vous permet de changer fréquemment configurés"              & vbCRLF & _
"Options d'Apache."                                                        & vbCRLF & vbCRLF & _
"Pour modifier la configuration complète d'Apache, sélectionnez Modifier"  & vbCRLF & _
"httpd.conf de l'Apache dans le menu déroulant."  

'*** Sub-Apache Generate Certificate ==========================================

Const lang_openssl_page_title          = "Certificat de serveur et un générateur de clés"
Const lang_openssl_cn                  = "Nom d'hôte ou votre nom complet"
Const lang_openssl_o                   = "Organisation / Société" 
Const lang_openssl_ou                  = "Département"
Const lang_openssl_e                   = "Email"
Const lang_openssl_l                   = "Ville/Local"
Const lang_openssl_st                  = "Etat"
Const lang_openssl_c                   = "pays"
Const lang_openssl_rsa_bits            = "bits de RSA"
Const lang_openssl_bt_reload           = "Recharger défaut"
Const lang_openssl_bt_generate         = "Exécuter Générer"

lang_openssl_cn_help_title             = "Aide - CN Nom commun"
lang_openssl_cn_help =  _
"(CN) Nom commun, habituellement le serveur Web hôte ou votre nom."      & vbCRLF &  _
" Pour sécuriser https://www.fred.com, vos nom commun est www.fred.com"  & vbCRLF &  _ 
" ou fred.com *. pour un certificat générique."

lang_openssl_o_help_title              = "Aide - Organisation O"
lang_openssl_o_help =  "(O) Organisation, par exemple, ma société"

lang_openssl_ou_help_title             = "Aide - OU Unité Organisation"
lang_openssl_ou_help =  "(OU) Votre division ou département. Par exemple, PHP Dept"

lang_openssl_email_help_title          = "Aide - E Courriel"
lang_openssl_email_help =  _
"(E) Habituellement spécifié pour un certificat d'utilisateur de messagerie"    & vbCRLF &  _
" d'ActiveSync ou du SMIM."

lang_openssl_l_help_title             = "Aide - Ville/Local L"
lang_openssl_l_help =  "(L) Ville/local par exemple, à Londres."

lang_openssl_st_help_title            = "Aide - Etat ST"
lang_openssl_st_help =  "(ST) Par exemple, dans le Cambridgeshire."

lang_openssl_c_help_title             = "Aide - Pays C"
lang_openssl_c_help = _
"(C) Code pays à deux caractères alphabétiques."    & vbCRLF &  _
"Par exemple la France donne 'FR'"

lang_openssl_rsa_help_title           = "Aide - Longueur en bits RSA"
lang_openssl_rsa_help = _
"Les autorités de certification ne sont plus l'émission"          & vbCRLF &  _
"certificats qui sont moins de 2048 longueurs de clé bits."    & vbCRLF &  _
"Recommandé de laisser ce paramètre par défaut de 2048 bits." 

lang_openssl_ca_detected_title             = "CA Found"
lang_openssl_ca_detected = _
"Il semble que vous utilisez votre propre CA."                                     & vbCRLF & vbCRLF & _
"Pour éviter d'écraser votre certificat serveur actuel et les principaux"          & vbCRLF &  _
"ce script est terminé."                                                           & vbCRLF & vbCRLF & _
"Pour créer un nouveau certificat de serveur et la clé, utilisez le script de CA." 

lang_openssl_cert_detected_title             = "Certificat de serveur trouvés"
lang_openssl_cert_detected = _
"Un certificat de serveur a été trouvé."                                       & vbCRLF & vbCRLF & _
"Voulez-vous écraser le certificat de serveur existant et la clé"              & vbCRLF & vbCRLF & _
"                                          Ecraser?"

lang_openssl_generated_title             = "Certificat de serveur Généré"
lang_openssl_generated = _
"Le certificat du serveur et la clé générée."                   & vbCRLF & vbCRLF & _
"These have been installed and"                                 & vbCRLF &  _
"SSL a été activé dans le fichier de configuration d'Apache."   & vbCRLF & vbCRLF & _
"Redémarrez les serveurs pour les changements prennent place."  & vbCRLF

'*** Sub-Apache APACHE VHOSTS =================================================

Const lang_av_apache_virtual_hosts_title  = "Apache hôtes virtuels"
Const lang_av_virtual_host_setup_frame    = "Virtual Host Configuration"
Const lang_av_list_of_hosts_frame         = "Liste des Armées"

Const lang_av_port_td                     = "Port"
Const lang_av_server_admin_td             = "Server Admin"
Const lang_av_document_root_td            = "document Root"
Const lang_av_server_name_td              = "Nom du serveur"
Const lang_av_server_alias_td             = "Alias ​​de serveur"
Const lang_av_error_log_td                = "Error Log"
Const lang_av_custom_log_td               = "Custom Log"
Const lang_av_additions_td                = "directives supplémentaires"
Const lang_av_vhost_help_td               = "Aide Vhost"

Const lang_av_delete_bt                   = "supprimer"
Const lang_av_update_vhost_bt             = "Mise à jour Vhost"
Const lang_av_create_vhost_bt             = "Créer Vhost"
Const lang_av_cancel_bt                   = "Annuler"

Const lang_av_select_folder_bt            = "Sélectionner un dossier"
Const lang_av_confirm_name_bt             = "confirmer"

Const lang_av_delete_vhost_bt             = "supprimer Vhost"
Const lang_av_view_in_browser_bt          = "Afficher dans le navigateur"
Const lang_av_cancel2_bt                  = "Annuler"

'--Port
Const lang_av_popup_title1                = "VHost Port"
lang_av_popup_str1                        = _
"Port serveur virtuel par défaut utilise le port du serveur principal à l'écoute."  & vbCRLF &  _   
"C'est généralement le port standard 80. "                                          & vbCRLF &  _   
"Exécution de mises à jour du menu multi-serveur de ce port."                       & vbCRLF & vbCRLF &  _ 
"Vous pouvez modifier la valeur du port. Il devient fixe et"                        & vbCRLF &  _   
"pas mis à jour lorsque le menu multi-serveur est exécuté."

'--Server Admin
Const lang_av_popup_title2                = "Server Admin"
lang_av_popup_str2                        = _
"Adresse e-mail pour les administrateur du site."                   & vbCRLF &  _  
"Ceci est dérivé du nom du serveur par défaut."                     & vbCRLF & vbCRLF &  _ 
"Vous pouvez utiliser n'importe quel e-mail que vous préférez."     & vbCRLF & vbCRLF &  _ 
"Alternativement supprimer en cliquant sur le bouton Supprimer."

'--Document Root
Const lang_av_popup_title3                = "Document Root"
lang_av_popup_str3                        = _
"Racine du document est le chemin complet vers un dossier. Apache"         & vbCRLF &  _ 
"servira un site Web hôte de ce dossier."                                  & vbCRLF & vbCRLF &  _ 
"1) Pour une portabilité utiliser le chemin par défaut s'affiche;"         & vbCRLF &  _ 
"   remplacez *** avec le dossier que vous souhaitez utiliser."            & vbCRLF & vbCRLF &  _ 
"2) Sinon, utiliser la ""Select Folder"" bouton."                          & vbCRLF &  _ 
"   Dans le menu contextuel naviguez et sélectionnez le dossier requis."   & vbCRLF &  _ 
"   Cliquez sur OK pour accepter."                                         & vbCRLF & vbCRLF &  _ 
"Note:"                                                                    & vbCRLF &  _ 
"Le script va remplacer les barres obliques de retour avec les"            & vbCRLF &  _ 
" slash. Si le dossier n'existe pas, il"                                   & vbCRLF &  _ 
" sera créé."

'--Document Root Browse Folder Dialog
Const lang_av_folder_dialog_str1          = "Sélectionnez un dossier pour votre dossier racine Vhost."
Const lang_av_folder_dialog_str2          = "Alternativement créer un nouveau dossier à utiliser." 

'--Server Name - Host Name
Const lang_av_popup_title4                = "Nom du serveur - Nom de l'hôte"
lang_av_popup_str4                        = _
"Nom de l'hôte est l'adresse que vous tapez dans"                      & vbCRLF &  _             
"un navigateur, à l'exclusion de la partie http://."                   & vbCRLF & vbCRLF &  _ 
"Example 1:"                                                           & vbCRLF &  _ 
"Adresse Internet complète: http://www.me.com"                         & vbCRLF &  _ 
"Nom d'hôte: www.me.com"                                               & vbCRLF & vbCRLF &  _ 
"Example 2:"                                                           & vbCRLF &  _ 
"Adresse Internet complète: http://uniserver.com"                      & vbCRLF &  _ 
"Nom d'hôte: uniserver.com"                                            & vbCRLF & vbCRLF &  _ 
"Après la saisie du nom d'hôte cliquez sur le ""Confirm"" bouton."     & vbCRLF &  _ 
"Cela permet des options de menu et les valeurs par défaut affiche."   & vbCRLF &  _ 
"Modifier ou supprimer, le cas échéant par défaut."

'---Server Alias
Const lang_av_popup_title5                = "Alias ​​de serveur"
lang_av_popup_str5                        = _
"Alias ​​de serveur permet au serveur d'être accessible par plus"        & vbCRLF &  _ 
"d'un nom. "                                                           & vbCRLF & vbCRLF &  _ 
"Vous devez avoir un serveur DNS correctement configuré pour lier"     & vbCRLF &  _ 
"ces noms à une adresse IP associée avec votre serveur."               & vbCRLF & vbCRLF &  _ 
"Les valeurs proposées sont dérivées à partir de votre""Host Name""."  & vbCRLF &  _ 
"Modifier ou supprimer, le cas échéant par défaut."

'---Error Log
Const lang_av_popup_title6                = "Error Log"
lang_av_popup_str6                        = _
"La directive ErrorLog définit le nom du fichier dans lequel"                             & vbCRLF &  _ 
"le serveur se connectera toutes les erreurs qu'il rencontre. Si le chemin fichier"       & vbCRLF &  _ 
"n'est pas absolu, il est supposé être relatif à"                                         & vbCRLF &  _ 
"the ServerRoot."                                                                         & vbCRLF & vbCRLF &  _ 
"La valeur par défaut proposé est dérivé à partir de votre ""Server Name""."              & vbCRLF &  _ 
"Modifier ou supprimer, le cas échéant par défaut."                                       & vbCRLF & vbCRLF &  _ 
"Remarque: Afin de minimiser les ressources de fichiers supprimer cette option. erreurs"  & vbCRLF &  _ 
"sera connecté au serveur de fichiers principal. "

'---Custom Log
Const lang_av_popup_title7                = "Custom Log"
lang_av_popup_str7                        = _
"La directive CustomLog définit le nom du fichier dans lequel"                           & vbCRLF &  _ 
"le serveur va enregistrer les informations d'accès. Si le chemin fichier"               & vbCRLF &  _ 
"n'est pas absolu, il est supposé être relatif à"                                        & vbCRLF &  _ 
"the ServerRoot."                                                                        & vbCRLF & vbCRLF &  _ 
"La valeur par défaut proposé est dérivé à partir de votre ""Server Name"""              & vbCRLF &  _ 
"Modifier ou supprimer, le cas échéant par défaut."                                      & vbCRLF & vbCRLF &  _ 
"Remarque: Afin de minimiser les ressources de fichiers supprimer cette option. accède"  & vbCRLF &  _ 
"sera connecté au serveur de fichiers l'accès principal. "

'--Additional Directives
Const lang_av_popup_title8                = "D'autres directives Apache"
lang_av_popup_str8                        = _
"D'autres directives Apache"                                                    & vbCRLF &  _
"Chaque Vhost hérite des paramètres de la principale"                           & vbCRLF &  _
"configuration du serveur."                                                     & vbCRLF & vbCRLF &  _  
"Placer ces directives dans un Vhost sera"                                      & vbCRLF &  _
"remplacer principaux paramètres des serveurs en permettant à chaque"           & vbCRLF &  _
"Vhost être adaptée de façon indépendante."                                     & vbCRLF & vbCRLF &  _ 
"Exemple 1: Vous pouvez avoir besoin de code entre les lignes en pointillés:"   & vbCRLF & vbCRLF &  _ 
"<VirtualHost *:80>"                                          & vbCRLF &  _
"    ServerName my_domain.com"                                & vbCRLF &  _
"    DocumentRoot " & Chr(34) & "D:/websites/site1" & Chr(34) & vbCRLF &  _
"----------------------------------------------------"        & vbCRLF &  _
"<Directory " & Chr(34) & "D:/websites/site" & Chr(34) & ">"  & vbCRLF &  _
"    Options Indexes FollowSymLinks Includes ExecCGI"         & vbCRLF &  _
"    AllowOverride All"                                       & vbCRLF &  _
"    Order allow,deny"                                        & vbCRLF &  _
"    Allow from all"                                          & vbCRLF &  _
"</Directory>"                                                & vbCRLF &  _
"----------------------------------------------------"        & vbCRLF &  _
"</VirtualHost>" 

Const lang_av_popup_title9      = "Erreur du dossier racine du document"
Const lang_av_popup_str9        = "S'il vous plaît eneter ou sélectionnez un dossier racine du document"

Const lang_av_popup_title10     = "Erreur de nom de serveur"
Const lang_av_popup_str10       = "S'il vous plaît eneter un nom de serveur"

Const lang_av_popup_title11     = "Erreur de nom de serveur"
Const lang_av_popup_str11       = "Nom du serveur existe déjà dans le fichier de configuration!"

Const lang_av_popup_title12     = "Supprimer le dossier racine"
Const lang_av_popup_str12       = "Voulez-vous supprimer le dossier racine?"

Const lang_av_popup_title13     = "Configuration Vhost jour"
Const lang_av_popup_str13       = "Pour les modifications prennent effet le redémarrage du serveur Apache"

'******************************************************************************
' MySQL - Server configuration
'******************************************************************************

lang_m1_mysql  = " MySQL"
lang_m2_mysql  = " Changer mot de passe"
lang_m3_mysql  = " Restaurer Mot de passe"

lang_m4_mysql  = " Modifier my.ini"
lang_m5_mysql  = " Voir mysql.err fichier journal des erreurs"

lang_m6_mysql  = " Créer supprimer la base de données"
lang_m7_mysql  = " Créer restreinte utilisateur MySQL"
lang_m8_mysql  = " Modifier restreinte utilisateur MySQL"
lang_m9_mysql  = " InnoDB Activer/Désactiver"

lang_m20_mysql_spacer  = "-------------------------------------------------"

'*** Sub-MySQL Change Password ================================================

Const lang_new_mysql_password_title    = "Nouveau jeu Mot de passe MySQL"
Const lang_new_pass_mysql_legend       = "Nouveau jeu de passe MySQL statut" 
Const lang_new_pass_starting_1         = "A partir du serveur MySQL"
Const lang_new_setting_new_password    = "Réglage Nouveau mot de passe"
Const lang_new_popup_title             = "Mot de passe root MySQL"
Const lang_new_popup_str               = "Mot de passe root MySQL a été changé"

Const lang_new_enter_pass_mysql_legend = "Entrez un nouveau mot de passe"
Const lang_new_change_mysql_password   = "Changer le mot de passe"
Const lang_new_error_title             = "Erreur"
Const lang_new_error_str               = "S'il vous plaît entrer un mot de passe"

'*** Sub-MySQL Restore Password ===============================================

Const lang_restore_mysql_password_title  = "Restaurer Mot de passe MySQL"
Const lang_restore_mysql_legend          = "Restaurer le mot de passe MySQL" 
Const lang_restore_stopping_kill         = "Arrêter ou tuer le serveur"
Const lang_restore_start_nogrant         = "Redémarrez le serveur MySQL avec une subvention ne"
Const lang_restore_root                  = "Restaurer le mot de passe à root"
Const lang_restore_kill_no_grant         = "Tuer aucune subvention serveur MySQL"
Const lang_restore_initial               = "Restaurer l'état initial du serveur MySQL"

Const lang_restore_run_legend            = "Restaurer Mot de passe"
Const lang_restore_run_button            = "Exécuter restauration"

Const lang_restore_popup_title           = "Mot de passe MySQL"
Const lang_restore_popup_str             = "Mot de passe MySQL a été restauré"


'*** Sub-MySQL Create delete Database =========================================

Const lang_create_delete_mysql_db_title   = "Créer Supprimer Base MySQL"
Const lang_create_database_mysql_legend   = "Créer une base de données" 
Const lang_clear_both_mysql_legend        = "clair à la fois" 
Const lang_delete_database_mysql_legend   = "Supprimer une base de données" 

Const lang_enter_name_to_create_mysql     = "Entrez le nom de base de données pour créer des" 
Const lang_select_name_to_delete_mysql    = "Sélectionnez Base de données pour supprimer" 

Const lang_create_database_mysql_bt       = "Créer la base de données" 
Const lang_clear_both_mysql_bt            = "clair à la fois" 
Const lang_delete_database_mysql_bt       = "supprimer la base de données" 

Const lang_create_mysql_popup_title1      = "Erreur"
Const lang_create_mysql_popup_str1        = "S'il vous plaît entrez un nom de base de données"

Const lang_create_mysql_popup_title2      = "Erreur"
Const lang_create_mysql_popup_str2        = "Base de données déjà créée!"

Const lang_create_mysql_popup_title3      = "Erreur"
Const lang_create_mysql_popup_str3        = "Aucune base de données sélectionnée"

Const lang_create_mysql_popup_title4      = "MySQL Not Running"
Const lang_create_mysql_popup_str4        = "Pour utiliser cette option de menu s'il vous plaît lancer le serveur MySQL"

'*** Sub-MySQL Create Restricted MySQL User ===================================

Const lang_create_restricted_mysql_user_title   = "Créer restreinte utilisateur MySQL"
Const lang_cr_mysql_create_legend               = "Créer un utilisateur restreint"
Const lang_cr_mysql_privileges_legend           = "privilèges"
Const lang_cr_mysql_option_select_db            = "Option de sélectionner une base de données"
Const lang_cr_mysql_user_name                   = "Nom d'utilisateur"
Const lang_cr_mysql_user_password               = "Mot de passe"
Const lang_cr_mysql_database_name               = "Base de données"

Const lang_cr_mysql_select                      = "Sélectionnez"
Const lang_cr_mysql_insert                      = "Insérer"
Const lang_cr_mysql_update                      = "Mise à jour"
Const lang_cr_mysql_delete                      = "supprimer"
Const lang_cr_mysql_create                      = "Créer"
Const lang_cr_mysql_drop                        = "chute"
Const lang_cr_mysql_alter                       = "Alter"
Const lang_cr_mysql_index                       = "Index"

Const lang_cr_mysql_cancel_bt                   = "Annuler"
Const lang_cr_mysql_create_bt                   = "Créer un utilisateur"
Const lang_cr_mysql_help_bt                     = "Aide"

Const lang_cr_mysql_popup_title1                = "Nom d'utilisateur vide"
Const lang_cr_mysql_popup_str1                  = "S'il vous plaît entrer un nom d'utilisateur"

Const lang_cr_mysql_popup_title2                = "Mot de passe vide"
Const lang_cr_mysql_popup_str2                  = "S'il vous plaît entrer un mot de passe utilisateur"

Const lang_cr_mysql_popup_title3                = "Nom base de données vide"
Const lang_cr_mysql_popup_str3                  = "S'il vous plaît entrez ou sélectionnez un nom de base"

Const lang_cr_mysql_popup_title4                = "Création"
Const lang_cr_mysql_popup_str4                  = "Restreint MySQL User Created"

Const lang_cr_mysql_popup_help_title            = "Restreint MySQL User - Aide"
lang_cr_mysql_popup_help_str                    = _
"Cet élément de menu crée un utilisateur MySQL avec des privilèges restreints."   & vbCRLF & vbCRLF & _  
"Entrez un nom d'utilisateur et mot de passe."                                    & vbCRLF & _                 
"Sélectionnez les privilèges utilisateur nécessaires."                            & vbCRLF & vbCRLF & _        
"Cet utilisateur est limité à l'aide d'une base de données unique."               & vbCRLF & _    
"Entrez un nom de base de données ou sélectionner un dans la liste des options."  & vbCRLF & _      
"Si la base ne sort pas il est créé."             

'*** Sub-MySQL Edit Restricted MySQL User =====================================

Const lang_edit_restricted_mysql_user_title     = "Modifier restreinte utilisateur MySQL"
Const lang_er_mysql_edit_legend                 = "Modifier l'utilisateur restreint"
Const lang_er_mysql_privileges_legend           = "privilèges"
Const lang_er_mysql_select_user                 = "Sélectionnez un utilisateur"
Const lang_er_mysql_user_name                   = "Nom d'utilisateur"
Const lang_er_mysql_user_password               = "Mot de passe"
Const lang_er_mysql_database_name               = "Base de données"

Const lang_er_mysql_select                      = "Sélectionnez"
Const lang_er_mysql_insert                      = "Insérer"
Const lang_er_mysql_update                      = "Mise à jour"
Const lang_er_mysql_delete                      = "supprimer"
Const lang_er_mysql_create                      = "Créer"
Const lang_er_mysql_drop                        = "chute"
Const lang_er_mysql_alter                       = "Alter"
Const lang_er_mysql_index                       = "Index"

Const lang_er_mysql_cancel_bt                   = "Annuler"
Const lang_er_mysql_update_bt                   = "Mise à jour de l'utilisateur"
Const lang_er_mysql_help_bt                     = "Aide"
Const lang_er_mysql_delete_bt                   = "supprimer"

Const lang_er_mysql_popup_title1                = "Nom d'utilisateur vide"
Const lang_er_mysql_popup_str1                  = "S'il vous plaît entrer un nom d'utilisateur"

Const lang_er_mysql_popup_title2                = "Mot de passe vide"
Const lang_er_mysql_popup_str2                  = "S'il vous plaît entrer un mot de passe utilisateur"

Const lang_er_mysql_popup_title3                = "Nom base de données vide"
Const lang_er_mysql_popup_str3                  = "S'il vous plaît entrez ou sélectionnez un nom de base"

Const lang_er_mysql_popup_title4                = "Création"
Const lang_er_mysql_popup_str4                  = "Restreint MySQL User Created"

Const lang_er_mysql_popup_title5                = "Mise à jour"
Const lang_er_mysql_popup_str5                  = "Restreint l'utilisateur de MySQL à jour"

Const lang_er_mysql_popup_help_title            = "Modifier restreinte utilisateur MySQL - Aide"
lang_er_mysql_popup_help_str                    = _
"De ce point de menu, vous pouvez soit supprimer"                                 & vbCRLF & _ 
"ou mettre à jour un utilisateur restreint MySQL."                                & vbCRLF & vbCRLF & _  
"supprimer:"                                                                      & vbCRLF & _                                                        
"Sélectionnez l'utilisateur dans la liste et cliquez sur le bouton supprimer "    & vbCRLF & vbCRLF & _             
"Mise à jour:  "                                                                  & vbCRLF & _ 
"Sélectionnez l'utilisateur dans la liste. Changer les paramètres au besoin. "    & vbCRLF & _ 
"Cliquez sur le bouton Mise à jour utilisateur."

'*** Sub-MySQL InnoDB Enable/Disable ==========================================
Const lang_innodb_mysql_str1                  = "Activer InnoDB"

'******************************************************************************
' PHP - Server configuration
'******************************************************************************

lang_m1_php  = " PHP"
lang_m2_php  = " Modifier la configuration de base"
lang_m3_php  = " Editer le fichier de configuration actuelle: php.ini"
lang_m4_php  = " Modifier le fichier de configuration de production: php_production.ini"
lang_m5_php  = " Modifier le fichier de configuration pour le développement: php_development.ini"
lang_m6_php  = " Commande Modifier la ligne du fichier de configuration: php-cli.ini"
lang_m7_php  = " Passer au fichier de configuration pour le développement"
lang_m8_php  = " Passer au fichier de configuration de production"
lang_m9_php  = " phpinfo () - Affichage de l'information PHP"
lang_m10_php = " PHP Accélérateurs APC et eAccelerator et ZOP"
lang_m11_php = " Panneau de contrôle de poire"
lang_m12_php = " Extensions PHP Activer/Désactiver"

lang_m20_php_spacer  = "-------------------------------------------------------------------------------------------"

'*** Sub-PHP Edit Basic Configuration =========================================

Const lang_php_page_title                          = "De base Configuration de PHP"
Const lang_php_current_frame                       = "courant"
Const lang_php_development_frame                   = "développement"
Const lang_php_production_frame                    = "Production"

Const lang_php_safe_mode_label                     = "mode sans échec"
Const lang_php_Show_PHP_in_server_signature_label  = "Montrer PHP dans la signature du serveur"
Const lang_php_register_globals_label              = "Register Globals"
Const lang_php_maximum_script_execute_time_label   = "Script Exécuter Temps maximum (s.)"
Const lang_php_maximum_memory_amount_label         = "Quantité de mémoire maximale (MB)"
Const lang_php_display_errors_label                = "Erreurs d'affichage"
Const lang_php_maximum_post_size_label             = "Taille maximale message"
Const lang_php_maximum_upload_size_label           = "Taille de téléchargement maximale"
Const lang_php_short_open_tags_label               = "Balises courtes ouvertes"
Const lang_php_display_startup_errors_label        = "Afficher les erreurs de démarrage"
Const lang_php_track_errors_label                  = "suivre des erreurs"
Const lang_php_html_errors_label                   = "erreurs HTML"
Const lang_php_variables_order_label               = "pour les variables"

Const lang_php_help_bt                             = "Aide"
Const lang_php_update_bt                           = "Mise à jour"

'-- Current updated
Const lang_php_current_config_title              = "Mise à jour PHP courant"
lang_php_current_config_str                      = _
"Le fichier de configuration courante de PHP a été mis à jour"  & vbCRLF & vbCRLF & _
"Pour les changements prennent effet le redémarrage du serveur Apache"

'-- Development updated
Const lang_php_develpopment_config_title         = "Développement PHP Mise à jour"
lang_php_develpopment_config_str                 = _
"Le fichier de configuration PHP de développement a été mis à jour"                    & vbCRLF & vbCRLF & _
"Pour les changements prennent effet:  "                                               & vbCRLF & vbCRLF & _
" 1] Commutateur au développement ce qui remplace le fichier de configuration actuel." & vbCRLF & _
" 2] Redémarrez le serveur Apache "

'-- Production updated
Const lang_php_production_config_title           = "La production PHP Mise à jour"
lang_php_production_config_str                   = _
"Le fichier de configuration PHP de production a été mis à jour"                  & vbCRLF & vbCRLF & _
"Pour les changements prennent effet:"                                            & vbCRLF & vbCRLF & _
" 1] Passer à la production ce qui remplace le fichier de configuration actuel."  & vbCRLF & _
" 2] Redémarrez le serveur Apache" 

'-- Main help
Const lang_php_config_main_help_title              = "Configuration de PHP"
lang_php_config_main_help_str                      = _
"Ce formulaire vous permet de changer fréquemment configuré les options de PHP"           & vbCRLF & vbCRLF & _ 
"Courant ini PHP:"                                                                        & vbCRLF & _ 
"  Commutation au développement ou la production écrase ce fichier"                       & vbCRLF & vbCRLF & _ 
"Ini fichier PHP développement."                                                          & vbCRLF & _ 
"  Permet d'erreurs pour être écrit à l'écran. Vous pouvez activer d'autres"              & vbCRLF & _ 
"  paramètres pour les essais."                                                           & vbCRLF & vbCRLF & _ 
"Ini fichier PHP de production."                                                          & vbCRLF & _ 
"  Empêche les erreurs en cours d'écriture à l'écran. Réglages de renforcer la sécurité." & vbCRLF & _ 
"  Par exemple, les variables globales sont désactivées par défaut."  

'*** Sub-PHP Switch to Development/Production Configuration file ==============

Const lang_php_switching_title         = "Fichier de configuration de PHP" 
Const lang_php_switched_to_production  = "Fichier de configuration est passé à la production" 
Const lang_php_switched_to_development = "Fichier de configuration est passé à Develpopment"

'*** Sub-PHP PHP Accelerators eAccelerator and APC and ZOP =====
Const lang_accel_eaccelerator_legend   = "eAccelerator"
Const lang_accel_eaccelerator_bti      = "eAccelerator panneau de contrôle"
Const lang_accel_eaccelerator_txt1     = "Activer eAccelerator"


Const lang_accel_apc_legend            = "APC"
Const lang_accel_apc_bti               = "APC panneau de contrôle"
Const lang_accel_apc_txt1              = "Activer APC"

Const lang_accel_zop_legend            = "Zend OpCache"
Const lang_accel_zop_bti               = "Zend OpCache du panneau de commande"
Const lang_accel_zop_txt1              = "Activer Zend OpCache"

Const lang_accel_title                 = "Configuration de PHP"
lang_accel_str                         = _
"Les fichiers de configuration de PHP ont été mis à jour."   & vbCRLF & vbCRLF & _
"Redémarrez les serveurs pour les changements prennent place." 


'*** Sub-PHP Pear Control ==============

Const lang_pear_leg             = "Pear de contrôle"
Const lang_pear_install_bt      = "Installer Pear"
Const lang_pear_frontend_bt     = "Voir Pear frontal"


'******************************************************************************
' MSMPT - Server configuration
'******************************************************************************

lang_m1_msmpt = " MSMPT"
lang_m2_msmpt = " Modifier la configuration MSMPT"
lang_m3_msmpt = " compte par défaut"
lang_m4_msmpt = " Afficher le journal"
lang_m5_msmpt = " Envoyer un test E-Mail"
lang_m20_msmpt_spacer  = "-------------------------------------"

'*** Sub-MSMPT Default Account/Send Test E-Mail ===============================

Const lang_msmpt_account_frame         = "MSMPT Sélectionnez Compte par défaut"
Const lang_msmpt_email_test_frame      = "MSMPT Envoyer un test E-mail"
Const lang_msmpt_email_to              = "email Pour"
Const lang_msmpt_subject               = "Sujet"
Const lang_msmpt_message               = "Message"  
Const lang_msmpt_send_mail_bt          = "Send Mail"

Const lang_msmpt_email_to_user_input   = "mexxx@tiscali.co.uk"
Const lang_msmpt_subject_user_input    = "UniServer Test"
Const lang_msmpt_message_user_input    = "1 message de test. Supprimer et utiliser votre propre!" 

Const lang_msmpt_test_title            = "Test de courriel"
Const lang_msmpt_test_str              = "Test Email envoyé"

'******************************************************************************
' CRON  - Server configuration
'******************************************************************************

lang_m1_cron = " CRON"
lang_m2_cron = " Modifier la configuration Cron"
lang_m3_cron = " contrôleur cron"
lang_m4_cron = " Afficher le journal"
lang_m20_cron_spacer  = "------------------------------------"

'*** Sub-CRON Cron Controller =================================================
Const lang_cron_program_legend         = "Exécuter Cron comme un programme"
Const lang_cron_program_start          = "Démarrer"
Const lang_cron_program_stop           = "Arrêtez"

Const lang_cron_service_legend         = "Exécuter Cron comme un service"
Const lang_cron_service_install_run    = "Installer et Run Service"
Const lang_cron_service_stop_uninstall = "Arrêtez-vous et désinstaller le Service"

'******************************************************************************
' DtDNS - Server configuration
'******************************************************************************

lang_m1_dtdns = " DtDNS"
lang_m2_dtdns = " Modifier les comptes DtDNS"
lang_m3_dtdns = " Groupe DtDNS UPDATE"
lang_m4_dtdns = " Activer le journal"
lang_m5_dtdns = " Afficher le journal"
lang_m6_dtdns = " Activer dans CRON"
lang_m20_dtdns_spacer  = "----------------------------------"

'*** Sub-DtDNS Force DtDNS UpDATE =============================================

Const lang_dtdns_popup_title       = "DtDNS Force Update"
lang_dtdns_popup_str               = _
"DtDNS a été mis à jour manuellement"   & vbCRLF & vbCRLF &  _
"Afficher le journal pour plus de détails." 

'******************************************************************************
' DbBackup - Server configuration
'******************************************************************************

lang_m1_db_backup = " DB sauvegarde"
lang_m2_db_backup = " Config DB Backup Edition"
lang_m3_db_backup = " Groupe DB de sauvegarde"
lang_m4_db_backup = " Activer le journal"
lang_m5_db_backup = " Afficher le journal"
lang_m6_db_backup = " Activer Dans Cron"

lang_m7_db_backup = " Sélectionnez DB pour la sauvegarde"
lang_m8_db_backup = " Restaurer DB à partir de sauvegarde"
lang_m20_db_backup_spacer  = "--------------------------------------------"

'*** Sub-DbBackup Force DB  Backup ============================================

Const lang_dbbackup_popup_title        = "DB force de sauvegarde"
lang_dbbackup_popup_str                = _
"Base de données a été manuellement sauvegardées"   & vbCRLF & vbCRLF &  _
"Afficher le journal pour plus de détails." 

'*** Sub-DbBackup Select DBs to backup ========================================

Const lang_db_select_title               = "Sélectionner les bases Pour de sauvegarde"
Const lang_db_select_databases_legend    = "Bases de données MySQL"
Const lang_db_select_to_backup_legend    = "Bases de données de sauvegarde Pour"
Const lang_db_select_database_to_backup  = "Sélectionnez Base de données de sauvegarde"
Const lang_db_select_delete_or_save      = "Supprimer l'élément à partir du fichier"
Const lang_db_select_clear_bt            = "Effacer"
Const lang_db_select_add_bt              = "Ajouter >>"
Const lang_db_select_delete_bt           = "supprimer"
Const lang_db_select_help_bt             = "Aide"

Const lang_db_select_popup_title1        = "Erreur"
Const lang_db_select_popup_str1          = "Aucune base de données sélectionnée"

Const lang_db_select_popup_title2        = "Erreur"
Const lang_db_select_popup_str2          = "Base de données déjà containined dans la liste"

Const lang_db_select_popup_help_title          = "Sélectionner les bases pour la sauvegarde - Aide "
lang_db_select_popup_help_str                  = _
"Sélectionnez Base de données pour la sauvegarde:"                                  & vbCRLF & vbCRLF & _ 
"Une liste des bases de données MySQL est montré sur la gauche."                    & vbCRLF & _ 
"Sélectionnez une base de données de sauvegarde et appuyez sur le bouton Ajouter."  & vbCRLF & _ 
"Base de données sélectionnée est stockée dans un dossier et affiché sur"           & vbCRLF & _ 
"la droite."                                                                        & vbCRLF & vbCRLF & _ 
"Efface un élément du fichier:"                                                     & vbCRLF & vbCRLF & _ 
"Une liste des bases de données à sauvegarder est montré sur la droite."            & vbCRLF & _ 
"Ce sont les entrées actuelles enregistrées dans un fichier."                       & vbCRLF & _ 
"Pour supprimer une entrée sélectionner une base de données de la liste et"         & vbCRLF & _ 
"cliquez sur Supprimer le bouton. "                                                 & vbCRLF & vbCRLF & _ 
"Remarque: l'emplacement de fichier"                                                & vbCRLF & _ 
"UniServer\uni_con\db_backup\dbs_to_backup.txt"                                     & vbCRLF & vbCRLF & _ 
"Ce fichier est utilisé par la Force DB de sauvegarde"                              & vbCRLF & _ 
"et ou de sauvegarde automatique en utilisant Cron."

'*** Sub-DbBackup Restore DBs from backup =====================================

Const lang_db_restore_title               = "Restaurer la base de sauvegarde"
Const lang_db_restore_databases_legend    = "Restaurer la base de données MySQL"
Const lang_db_restore_select_name         = "Sélectionnez la base de données à restaurer"

Const lang_db_restore_bt                  = "restaurer"
Const lang_db_restore_help_bt             = "Aide"

Const lang_db_restore_popup_title1        = "Erreur"
Const lang_db_restore_popup_str1          = "Pas de sauvegarde de la base sélectionnée"

Const lang_db_restore_popup_title2        = "restauré"
Const lang_db_restore_popup_str2          = "Base de données a été restaurée"

Const lang_db_restore_popup_help_title    = "Restaurer la base de données MySQL - Aide"
lang_db_restore_popup_help_str            = _
"Cette option de menu vous permet de restaurer une base de données"    & vbCRLF & _ 
"un fichier de sauvegarde."                                            & vbCRLF & vbCRLF & _ 
"Restauration:"                                                  & vbCRLF & _ 
"Une liste de sauvegardes MySQL est affiché."                     & vbCRLF & _  
"Sélectionnez une base de données à restaurer et cliquez sur le bouton Restaurer."    & vbCRLF & vbCRLF & _  
"Format de fichier: dbname_time stamp_.sql"

'******************************************************************************
' Perl - Server configuration
'******************************************************************************

lang_m1_perl = " PERL"
lang_m2_perl = " Perl panneau de contrôle"
lang_m20_perl_spacer  = "-------------------------------"

'*** Sub-Perl Force Shebang Update/Convert Win2Nix/Run Test Script ============

Const lang_perl_control_legend        = "Perl panneau de contrôle"
Const lang_perl_force_update          = "Groupe Shebang mise à jour"
Const lang_perl_convert_win2nix       = "convertirWin2Nix"
Const lang_perl_run_test_script       = "Exécuter le script de test"

Const lang_perl_popup_title1           = "Perl Erreur - Perl n'est pas installé!"
lang_perl_popup_str1                   = _
"Comment installer Perl:"                                     & vbCRLF  & vbCRLF &  _                          
"Naviguez jusqu'au dossier UniServer\alt_diag\install_perl"   & vbCRLF &  _ 
"et suivez les instructions dans le Read_me.txt file"         & vbCRLF  & vbCRLF &  _  
"Grisé options de menu seront alors disponibles."

Const lang_perl_popup_title2           = "Mise à jour de Perl Shebang"
lang_perl_popup_str2                   = _
"Mise à jour shebang dans des fichiers: *.pl and *.cgi"            & vbCRLF  & vbCRLF &  _      
"pour le dossier UniServer\cgi-bin et tous les sous-dossiers." 

Const lang_perl_popup_title3           = "Fichier non trouvé"
Const lang_perl_popup_str3             = "Impossible de trouver le fichier index.pl" 

Const lang_perl_popup_title4           = "Groupe Shebang mise à jour"
lang_perl_popup_str4                   = _
"Scripts Perl sur Unix développés ne sera pas exécuté sur une machine Window"     & vbCRLF &  _            
"Ils nécessitent une conversion à un format Windows."                             & vbCRLF  & vbCRLF &  _ 
" Ce script remplace le shebang Unix avec un shebang de Windows"                  & vbCRLF &  _       
" qu'Apache de trouver l'interpréteur Perl"                                       & vbCRLF & vbCRLF &  _  
"Remarque: Après l'installation d'un tiers des scripts cgi-bin à courir"          & vbCRLF &  _ 
"Groupe Shebang Update. Après cette shebang l'est automatiquement mis à jour"     & vbCRLF &  _ 
"lorsque les serveurs sont déplacés. N'oubliez pas d'utiliser shebang correcte pour les nouveaux scripts."

Const lang_perl_popup_title5           = "convertirWin2Nix"
lang_perl_popup_str5                   = _
"Scripts Perl développés sur Windows ne fonctionnera pas sur une machine Unix"                & vbCRLF &  _          
" Ils nécessitent une conversion à un format Unix."                                           & vbCRLF  & vbCRLF &  _   
" Ce script copie tous les fichiers dans cgi-bin dans un nouveau dossier \ cgi-bin-unix \"    & vbCRLF &  _      
" scripts dans ce nouveau dossier sont converties à partir de Windows au format Unix."        & vbCRLF  & vbCRLF &  _     
" a) Convertit fin de ligne:  Dec(#10#13=>#13) Hex 0D0A to 0A"                                & vbCRLF &  _ 
"                             CR+LF to LF"                                                    & vbCRLF &  _ 
" b) Remplace Windows avec Unix shebang shebang"                             

Const lang_perl_popup_title6           = "Exécuter le script de test"
lang_perl_popup_str6                   = _
"Une installation par défaut du serveur Uniform page de test contient index.pl "              & vbCRLF &  _ 
"situé dans UniServer dossier \ cgi-bin. Ceci peut être exécuté en cliquant sur le"           & vbCRLF &  _ 
"Bouton Exécuter script de test."                                                             & vbCRLF  & vbCRLF &  _ 
"Note: Cette page peut être remplacé par votre fichier index.pl propres.  "                   & vbCRLF &  _ 
"Bouton Exécuter script de test devient alors un raccourci pour exécuter votre application."


'###-END-###


