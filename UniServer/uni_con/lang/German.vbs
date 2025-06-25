'******************************************************************************
' Language file - Coral Series - german.vbs
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

Const lang_view_www   = "Zeige www"   'User button text
Const lang_view_ssl   = "Zeige ssl"   'User button text

'-------------------------------------------------- End User Configuration ---

'******************************************************************************
' Messages common functions
'******************************************************************************

Const lang_cf_title1            = "MySQL Datenbank erstellen"
Const lang_cf_str1              = "Es gibt bereits eine Datenbank mit diesem Namen"

Const lang_cf_title2            = "Entfernen Sie MySQL-Datenbank"
Const lang_cf_str2              = "Es gibt keine Datenbank mit diesem Namen"

Const lang_cf_title3            = "angeforderte Datei"
Const lang_cf_str3              = "Not Found"


'******************************************************************************
' Initial Start Up
'******************************************************************************

'*** Space Check ==============================================================

Const lang_space_popup_title1         = "Weltraum entdeckt!"
lang_space_popup_str1                 = _
"Ein Raum wurde in Ordnernamen, die zu UniServer Ordner erkannt"             & vbCRLF & vbCRLF &  _
"Leider Leerzeichen sind nicht in Pfadnamen erlaubt"                         & vbCRLF & _
"Bitte korrigieren und versuchen Sie es erneut."                             & vbCRLF & vbCRLF &  _
"Gründe für diese Einschränkung:"                                            & vbCRLF & _
"Die Fähigkeit, Legacy-Anwendungen ausführen."                               & vbCRLF & _
"Dies vermeidet auch eingeschränkte Schreibrechte in C:\Program Files."      & vbCRLF & vbCRLF &  _
"Note:"                                                                      & vbCRLF & _
"Wenn Sie die Uniform Server mit Leerzeichen in dem Pfad laufen"             & vbCRLF & _
"mit einem virtuellen Laufwerk wie in Dokument erläutert run_on_drive_w.txt" & vbCRLF & _
"befindet sich im Ordner UniServer\alternative_control. geeignet nur"        & vbCRLF & _
"wenn Server als Programm ausführen"

'*** Pre Check ================================================================

Const lang_pre_popup_title1         = "Warnung Ports im Einsatz!"
Const lang_pre_in_use               = "Die folgenden Ports sind im Einsatz:"
Const lang_pre_port_number          = "Port-Nummer"
Const lang_pre_pid                  = "PID"
Const lang_pre_process_name         = "Prozess Name"
Const lang_pre_path_to_process      = "Path to-Prozess"
lang_pre_popup_str1                 = _
"So starten Sie den Uniform Server, müssen die oben genannten Ports frei sein."  & vbCRLF &  _
"Entweder Stop & deinstallieren Sie die kollidierende Anmeldung"                 & vbCRLF &  _
"oder bewegen Sie die Uniform Server auf verschiedenen Ports."

Const lang_pre_popup_title2         = "Ändern Sie MySQL-Passwort!"
lang_pre_popup_str2                 = _
"Für einen Entwicklungs-Server gibt es keine wirkliche Notwendigkeit "  & vbCRLF & _
"Ändern des MySQL-Passwort, obwohl es gut ist"                          & vbCRLF & _
"Praxis zu tun."                                                        & vbCRLF & vbCRLF &  _
"Wenn Sie sich mit Ihren Servern für den produktiven Einsatz"           & vbCRLF & _ 
"oder setzte sie auf das Internet oder ein Intranet, ist es"            & vbCRLF & _ 
"unumgänglich, eine neue MySQL-Passwort gesetzt. der Standardwert"      & vbCRLF & _
"Kennwort veröffentlicht wird, so dass Ihr Server bereits"              & vbCRLF & _
"gefährdet."                                                            & vbCRLF & vbCRLF &  _
"Klicken YES zum Ändern des Kennworts (öffnet ein neues Fenster)"       & vbCRLF &  _
"oder NO zu überspringen Passwort einrichten."

Const lang_pre_popup_title4         = "Start-up-Optionen übersprungen!"
lang_pre_popup_str4                 = _
"Sie übersprungen eine oder mehrere Start-up-Konfigurationsoptionen."   & vbCRLF &  _ 
"Das nächste Mal starten Coral Sie werden erneut aufgefordert,."        & vbCRLF & vbCRLF &  _
"Sie können deaktivieren auffordert, indem nag_user = false"            & vbCRLF &  _
"in config_tracker.ini"                                                 & vbCRLF & vbCRLF &  _
"Alternativ:"                                                           & vbCRLF &  _
"klicken YES automatisch deaktiviert werden aufgefordert"               & vbCRLF &  _
"klicken NO aufgefordert, beim nächsten Mal werden Sie beginnen Server"  

'*** ZoneAlarm ================================================================

Const lang_za_popup_title1         = "Warning ZoneAlarm erkannt!"
lang_za_popup_str1                 = _
"Die ZoneAlarm Anwendung Konflikte mit dem Apache"              & vbCRLF &  _ 
"eine blaue Bildschirm des Todes, wenn Apache geschlossen ist." & vbCRLF & vbCRLF &  _
"Empfehlung EXIT ZoneAlarm vor Schließung Apache"               & vbCRLF &  _
"oder besser deinstallieren ZoneAlarm."        

'******************************************************************************
' Main menus - Program and Service
'******************************************************************************

'*** Run As Program ===========================================================

Const lang_legend_start_stop_servers = "Start/Stop-Servern" 
Const lang_start_apache              = "Starten Sie Apache"
Const lang_stop_apache               = "Stoppen Sie Apache"
Const lang_start_mysql               = "Starten Sie MySQL" 
Const lang_stop_mysql                = "Stoppen Sie MySQL" 
Const lang_start_both                = "Starten Sie beide"
Const lang_stop_both                 = "stoppen Sie beide"

Const lang_program_title1            = "Apache auf Start-Fehler"
Const lang_program_str1              = "Kann Apache Server zu starten"

Const lang_program_title2            = "Apache Stop-Fehler"
Const lang_program_str2              = "Kann Apache Server stoppen"

Const lang_program_title3            = "MySQL auf Start-Fehler"
Const lang_program_str3              = "Kann MySQL Server starten"

Const lang_program_title4            = "MySQL Stop-Fehler"
Const lang_program_str4              = "Kann MySQL Server stoppen"

'*** Run As Service ===========================================================

Const lang_legend_start_stop_services  = "Start/Stop-Dienstleistungen"

Const lang_install_apache_service      = "Installieren Apache" 
Const lang_uninstall_apache_service    = "Deinstalliert Apache"
Const lang_start_apache_service        = "Starten Apache"
Const lang_stop_apache_service         = "Stoppen Apache" 

Const lang_install_mysql_service       = "Installieren MySQL"
Const lang_uninstall_mysql_service     = "Deinstalliert MySQL"
Const lang_start_mysql_service         = "Starten MSQL"
Const lang_stop_mysql_service          = "Stoppen Sie MySQL"

Const lang_start_both_services       = "Installieren/Run Apache und MySQL Dienstleistungen" 
Const lang_stop_both_services        = "Stop/Uninstall Apache und MySQL Dienstleistungen" 

'*** Common Program and Service ===============================================

Const lang_server_utilities          = "Server Utilities" 
Const lang_mysql_console             = "MySQL-Konsole"
Const lang_server_status             = "Server Status"
Const lang_server_configuration      = "Server Configuration"
Const lang_multi_servers             = "Multi Servers" 
Const lang_about                     = "über"

Const lang_about_popup_title1       = "über"
lang_about_popup_str1               = _
"Server-Steuerung verwendet Windows HTA und Skriptsprache"          & vbCRLF &  _
"VBScript. Diese Kombination ermöglicht die Uniform Server ist"     & vbCRLF &  _
"Steuerung und Menüs auf einfache Weise ohne die geändert werden"   & vbCRLF &  _
"müssen für die Erstellung. Darüber hinaus verschiedenen Sprachen"  & vbCRLF &  _
"sind leichter unterstützt."


Const lang_view_php_info             = "Zeige phpinfo"
Const lang_phpmyadmin                = "phpMyAdmin"
Const lang_apache_syntax_check       = "Apache Syntaxprüfung"         '- Button and message box title
Const lang_server_documentation      = "Server-Dokumentation" 
Const lang_select_language           = "          Wählen Sie Sprache" 
Const lang_select_language_spacer    = "--------------------------------------"

Const lang_documentation_popup_title       = "Dokumentation"
lang_documentation_popup_str               = _
"Leider dieser Dokumentation Seite"        & vbCRLF &  _
"ist in Ihrer Sprache nicht verfügbar."


'*** Server Status ============================================================

Const lang_server_status_page_title  = "Server Status"
Const lang_ss_general                = "Allgemeiner Status" 
Const lang_general_1a                = "Ihre Internet-IP-Adresse"
Const lang_general_2a                = "Zugänglich von Internet" 
Const lang_general_3a                = "Cron laufen Status"
Const lang_general_4a                = "PHP INI: php.ini file"
Const lang_general_5a                = "Cron service name"

Const lang_general_6a                = "Newer version UniServer"
Const lang_general_6b                = "nicht verfügbar"
Const lang_general_6c                = "Strom"

Const lang_ss_apache_server          = "Apache Server"
Const lang_apache_1a                 = "Apache port"
Const lang_apache_2a                 = "Apache SSL port" 
Const lang_apache_3a                 = "Apache Namen der ausführbaren Datei"
Const lang_apache_4a                 = "Apache service name" 
Const lang_apache_5a                 = "Apache SSL server" 
Const lang_apache_6a                 = "Apache laufen Status" 
Const lang_apache_7a                 = "Apache installieren Status"

Const lang_ss_mysql_server           = "MySQL Server"
Const lang_mysql_1a                  = "MySQL port"
Const lang_mysql_2a                  = "MySQL Namen der ausführbaren Datei"
Const lang_mysql_3a                  = "MySQL Service-Namen"
Const lang_mysql_4a                  = "MySQL laufen Status"
Const lang_mysql_5a                  = "MySQL installieren Status"

Const lang_ss_port_status            = "Port Status"
Const lang_port_1a                   = "Apache port" 
Const lang_port_2a                   = "Apache SSL port" 
Const lang_port_3a                   = "MySQL port" 

Const lang_ss_get_ip                   = "Holen Sie sich IP"
Const lang_ss_run_access_check         = "Run überprüfen"
Const lang_ss_yes                      = "Yes" 
Const lang_ss_no                       = "No"
Const lang_ss_running                  = "laufen"
Const lang_ss_not_running              = "Fährt nicht"
Const lang_ss_development              = "Entwicklung" 
Const lang_ss_production               = "Produktion" 
Const lang_ss_enabled                  = "aktiviert"
Const lang_ss_disabled                 = "Behinderte" 
Const lang_ss_free_to_install          = "Freie zu installieren" 
Const lang_ss_installed_as_service     = "Installed as a service"
Const lang_ss_installed_as_program     = "Installierte als Programm"
Const lang_ss_is_free_to_use           = "Ist kostenlos zu benutzen"
Const lang_ss_in_use_by_this_server    = "In Gebrauch von diesem Server" 
Const lang_ss_in_use_by_another_server = "Von einem anderen Server"

'*** Move Servers Multi-servers ===============================================

Const lang_multi_server_page_title     = "Verschieben von Servern Multi-Server"
Const lang_multi_old_heading           = "-- alt --"
Const lang_multi_new_heading           = "-- neu --"
Const lang_multi_reload                = "nachladen"
Const lang_multi_increment             = "Zuwachs"
Const lang_multi_run                   = "RUN Verschieben von Servern" 
Const lang_multi_invalid               = "ungültige Eingabe"
Const lang_multi_please_correct        = "Bitte korrigieren Sie"

'##############################################################################
' Server configuration - Main Menu 
'##############################################################################

'******************************************************************************
' General - Server configuration
'******************************************************************************

lang_m1_general          = " General"
lang_m2_general          = " Ändern Ports. Apache und MySQL"
lang_m3_general          = " Klare Server Log Files"

lang_m4_general_www         = " Root www - Ändern Sie Passwörter und Zugangsdaten"
lang_m5_general_ssl         = " Root ssl - Ändern Sie Passwörter und Zugangsdaten"
lang_m6_general_phpmyadmin  = " Root phpMyAdmin - Ändern Zugangsart"

lang_m20_general_spacer  = "---------------------------------------------------------------"

'*** Sub-General Change ports, Apache and MySQL ===============================

lang_port_change_reload         = "nachladen"
lang_port_change_change         = "Änderung"
lang_port_change_change_all     = "Alle ändern"
lang_port_change_change_title   = "Port/s Changed"
lang_port_change_changed        = "Port oder Ports wurden geändert"

'*** Sub-General Clear Server Log Files ======================================
Const lang_logs_title             = "Klare Server Logs"
Const lang_logs_frame             = "Wählen Sie Login"

Const lang_log_apache_error       = "Apache Error Log"
Const lang_log_apache_access      = "Apache Access Log"
Const lang_log_ssl_apache_error   = "Apache SSL Error Log"
Const lang_log_ssl_apache_access  = "Apache SSL Access Log"

Const lang_log_mysql_error        = "MySQL Error Log"
Const lang_log_cron               = "Cron Log"
Const lang_log_DTDNS              = "DTDNS Log"
Const lang_log_dbbackup           = "Datenbank-Backup-Log"

Const lang_log_select_all_bt      = "Wählen Sie alle"
Const lang_log_clear_bt           = "Auswahl löschen"

Const lang_log_popup_title1       = "Apache läuft"
lang_log_popup_str1               = _
"Apache-Server läuft. Log-Dateien können nicht gelöscht werden."  & vbCRLF  & vbCRLF &  _  
"Bitte hör auf Apache und versuchen Sie es erneut."

Const lang_log_popup_title2       = "MySQL läuft"
lang_log_popup_str2               = _
"MySQL-Server läuft. Log-Datei kann nicht gelöscht werden."       & vbCRLF  & vbCRLF &  _  
"Bitte stoppen MySQL und versuchen Sie es erneut."

Const lang_log_popup_title3       = "Eindeutiger Inhalt der Log-Dateien"
lang_log_popup_str3               = _
"Log-Dateien können sehr groß geworden Verwendung dieser"         & vbCRLF &  _ 
"Menü-Option, um den Inhalt eines löschen"                        & vbCRLF &  _ 
"ausgewählte Protokolldatei."                                     & vbCRLF & vbCRLF &  _  
"Wählen Sie eine Log-Datei und klicken Sie auf""Clear Button"""   & vbCRLF & vbCRLF &  _  
"Alternativ klicken Sie auf ""Select all"" -Taste und"            & vbCRLF &  _ 
"klicken Sie dann auf ""Clear Button"""                           & vbCRLF & vbCRLF &  _  
"Note 1:"                                                         & vbCRLF &  _ 
"Die Dateien werden nicht nur Inhalte gelöscht gelöscht."         & vbCRLF & vbCRLF &  _  
"Note 2:"                                                         & vbCRLF &  _ 
"Stop-Server Apache und MySQL klar"                               & vbCRLF &  _ 
"Log-Dateien." 


'*** Sub-General Root www - Change passwords and access ========================
Const lang_passwords_page_title_www          = "Root www - Ändern Sie Passwörter und Zugangsdaten"
Const lang_passwords_www_legend              = "ROOT WWW Folder UniServer\www "

Const lang_passwords_name_www                = "Name:"
Const lang_passwords_password_www            = "Kennwort:"
Const lang_passwords_edit_www_bt             = "bearbeiten"
Const lang_passwords_change_password_www_bt  = "Ändern Sie den Namen vergessen"
Const lang_passwords_reload_www              = "Seite neu laden Werte aus der Datei"

Const lang_www_htaccess1_title               = "Blank oder Kennwort"
Const lang_www_htaccess1_str                 = "Beide einen Namen und ein Passwort erforderlich"

Const lang_www_htaccess2_title               = "Name und Passwort"
Const lang_www_htaccess2_str                 = "aktualisiert"

Const lang_passwords_state_www_legend        = "Status ändern www "

Const lang_www_password                      = "Kennwort:"
Const lang_www_password_disabled             = "Password Disabled"
Const lang_www_password_enabled              = "Passwort aktiviert"
Const lang_www_access                        = "Zugang:"
Const lang_www_access_local                  = "Local Access"
Const lang_www_access_local_intranet         = "Local-und Intranet-Zugang"
Const lang_www_access_internet               = "Lokale, Intranet-und Internet-Zugang"

Const lang_passwords_test_www_bt             = "Test"

Const lang_www_passwords_help_title          = "Set www zugreifen. Optional Passwort schützen"
lang_www_passwords_help_str                  = _
"Überblick:"                                                                                     & vbCRLF & _
"Auf dieser Seite können Sie Ihren Server on-line stellen oder den Zugang"                       & vbCRLF & _
"zum lokalen Host (Standard) oder auf localhost und Intranet. "                                  & vbCRLF & _
"Optional können Sie einen Namen und ein Passwort, um Ordner zugreifen www"                      & vbCRLF & vbCRLF & _
"1] Button ""Edit"" können Sie direkt bearbeiten Sie eine Konfigurationsdatei."                  & vbCRLF & vbCRLF & _
"2] Nach der Eingabe eines Benutzernamens und Kennworts, klicken Sie auf ""ändern Sie den Namen" & vbCRLF & _
"   Kennwort ""-Taste. Diese aktualisiert die entsprechenden Passwort-Datei."                    & vbCRLF & vbCRLF & _
"3] Aktivieren und Deaktivieren von Passwort-Schutz:"                                            & vbCRLF & _
"   Verwenden Sie die Optionsfelder aktivieren oder deaktivieren Sie die Authentifizierung."     & vbCRLF & _
"   Password Disabled: Die Authentifizierung ist nicht erforderlich. "                           & vbCRLF & _
"   Passwort aktiviert: Name und Passwort sind erforderlich, um Server-Zugriff."                 & vbCRLF & vbCRLF & _
"4] Lokale oder Local-und Intranet-oder Online-Zugang:"                                          & vbCRLF & _
"   Verwenden Sie die Optionsfelder, um die erforderlichen Zugriffs-Modus wählen"                & vbCRLF & _
"   Local Access: Beschränkt Server Zugriff auf lokale Benutzer nur. "                           & vbCRLF & _
"   Local-und Intranet-Zugang: Erlauben Sie Benutzern auf Ihrem Intranet-Zugang"                 & vbCRLF & _
"   Lokale, Intranet-und Internet-Zugang: Stellt Ihr Server On-Line "         

'*** Sub-General Root ssl - Change passwords and access ========================
Const lang_passwords_page_title_ssl          = "Root ssl - Change passwords and access"
Const lang_passwords_ssl_legend              = "ROOT SSL Folder UniServer\ssl "

Const lang_passwords_name_ssl                = "Name:"
Const lang_passwords_password_ssl            = "Kennwort:"
Const lang_passwords_edit_ssl_bt             = "bearbeiten"
Const lang_passwords_change_password_ssl_bt  = "Ändern Sie den Namen vergessen"
Const lang_passwords_reload_ssl              = "Seite neu laden Werte aus der Datei"

Const lang_ssl_htaccess1_title               = "Blank oder Kennwort"
Const lang_ssl_htaccess1_str                 = "Beide einen Namen und ein Passwort erforderlich"

Const lang_ssl_htaccess2_title               = "Name und Passwort"
Const lang_ssl_htaccess2_str                 = "aktualisiert"

Const lang_passwords_state_ssl_legend    = "Change State ssl "

Const lang_ssl_password                      = "Kennwort:"
Const lang_ssl_password_disabled             = "Password Disabled"
Const lang_ssl_password_enabled              = "Passwort aktiviert"
Const lang_ssl_access                        = "Zugang:"
Const lang_ssl_access_local                  = "Local Access"
Const lang_ssl_access_local_intranet         = "Local-und Intranet-Zugang"
Const lang_ssl_access_internet               = "Lokale, Intranet-und Internet-Zugang"

Const lang_passwords_test_ssl_bt             = "Test"

Const lang_ssl_passwords_help_title          = "Set ssl zugreifen. Optional Passwort schützen"
lang_ssl_passwords_help_str                  = _
"Überblick:"                                                                                     & vbCRLF & _
"Auf dieser Seite können Sie Ihren ssl Server on-line stellen oder den Zugang"                   & vbCRLF & _
"zum lokalen Host (Standard) oder auf localhost und Intranet. "                                  & vbCRLF & _
"Optional können Sie einen Namen und ein Passwort, um Ordner zugreifen www"                      & vbCRLF & vbCRLF & _
"1] Button ""Edit"" können Sie direkt bearbeiten Sie eine Konfigurationsdatei."                  & vbCRLF & vbCRLF & _
"2] Nach der Eingabe eines Benutzernamens und Kennworts, klicken Sie auf ""ändern Sie den Namen" & vbCRLF & _
"   Kennwort ""-Taste. Diese aktualisiert die entsprechenden Passwort-Datei."                    & vbCRLF & vbCRLF & _
"3] Aktivieren und Deaktivieren von Passwort-Schutz:"                                            & vbCRLF & _
"   Verwenden Sie die Optionsfelder aktivieren oder deaktivieren Sie die Authentifizierung."     & vbCRLF & _
"   Password Disabled: Die Authentifizierung ist nicht erforderlich. "                           & vbCRLF & _
"   Passwort aktiviert: Name und Passwort sind erforderlich, um Server-Zugriff."                 & vbCRLF & vbCRLF & _
"4] Lokale oder Local-und Intranet-oder Online-Zugang:"                                          & vbCRLF & _
"   Verwenden Sie die Optionsfelder, um die erforderlichen Zugriffs-Modus wählen"                & vbCRLF & _
"   Local Access: Beschränkt Server Zugriff auf lokale Benutzer nur. "                           & vbCRLF & _
"   Local-und Intranet-Zugang: Erlauben Sie Benutzern auf Ihrem Intranet-Zugang"                 & vbCRLF & _
"   Lokale, Intranet-und Internet-Zugang: Stellt Ihr Server On-Line "         
       

'*** Sub-General Root phpmyadmin - Change passwords and access ========================
Const lang_passwords_page_title_phpmyadmin          = "phpMyAdmin - Zugriff ändern"
Const lang_passwords_phpmyadmin_legend              = "phpMyAdmin Zugang"

Const lang_phpmyadmin_access_local                  = "lokal"
Const lang_phpmyadmin_access_local_intranet         = "Intranet + Passwörter"
Const lang_phpmyadmin_access_internet               = "Internet + Passwörter + ssl"

Const lang_passwords_phpmyadmin_legend2             = "Option Edit Config-Dateien"
Const lang_passwords_edit1_phpmyadmin_bt            = "Anzeigen oder bearbeiten .htaccess"
Const lang_passwords_edit2_phpmyadmin_bt            = "Anzeigen oder bearbeiten config.inc.php"
Const lang_passwords_test_phpmyadmin_bt             = "Test - Ansicht im Browser"

Const lang_phpmyadmin_passwords_title1              = "SSL nicht aktiviert"
lang_phpmyadmin_passwords_str1                      = _
"Diese Option ist nicht verfügbar!"                                                      & vbCRLF & vbCRLF & _
"Erlauben Internet Zugang zu phpMyAdmin erfordert SSL aktiviert sein."                   & vbCRLF & _
"SSL verschlüsselt alle Transaktionen über das Internet."                                & vbCRLF & vbCRLF & _
"Keine Aktion durchgeführt worden ist anders als zu früheren Zugang Zustand zurück zu."  & vbCRLF & _
"Führen Sie diesen Menüpunkt nach der Aktivierung von SSL."                              & vbCRLF & vbCRLF & _
"Note:"                                                                                  & vbCRLF & _
"SSL wird automatisch aktiviert, wenn Sie eine Server-Zertifikat."

Const lang_phpmyadmin_passwords_help_title          = "Set phpmyadmin Zugriff."
lang_phpmyadmin_passwords_help_str                  = _
"Überblick:"                                                                                            & vbCRLF & _
"In diesem Menü können Sie phpMyAdmin Zugang zu ändern und anzuzeigen oder manuell bearbeiten"          & vbCRLF & _
"zugehörigen Konfigurationsdateien."                                                                    & vbCRLF & vbCRLF & _
"1] lokal"                                                                                              & vbCRLF & _
"Lokaler Zugriff ist die Standardeinstellung. Dies schränkt phpMyAdmin Zugang zu localhost"             & vbCRLF & _
"dh es ist nur aus dem PC auf dem es läuft ist. Zusätzlich zu"                                          & vbCRLF & _
"Zugriff auf die MySQL-Server ist kein Passwort erforderlich verwendet es automatisch root."            & vbCRLF & vbCRLF & _
"2] Intranet + Passwörter"                                                                              & vbCRLF & _
"Diese Option ermöglicht Intranet Benutzern Zugriff auf die MySQL-Server, um Zugang zu erhalten"        & vbCRLF & _
"alle Benutzer sind verpflichtet, einen Namen und ein Passwort eingeben. "                              & vbCRLF & vbCRLF & _
"3]Internet + Passwörter + ssl"                                                                         & vbCRLF & _
"Diese Option ermöglicht es Internet-Nutzern den Zugang zum MySQL-Server, um Zugang zu erhalten"        & vbCRLF & _
"alle Benutzer sind verpflichtet, einen Namen und ein Passwort eingeben. Alle Transaktionen erfolgen"   & vbCRLF & _
"über eine sichere verschlüsselte Verbindung."                                                          & vbCRLF & _
"Note: Diese Option wird deaktiviert, bis ein Server-Zertifikat erzeugt wurde."

'******************************************************************************
' Apache - Server configuration
'******************************************************************************

lang_m1_apache   = " Apache"
lang_m2_apache   = " Bearbeiten Sie das Basis-Konfiguration"
lang_m3_apache   = " bearbeiten httpd.conf"
lang_m4_apache   = " bearbeiten httpd-ssl.conf"
lang_m5_apache   = " View Error Log-Datei error.log"
lang_m6_apache   = " View Access Log-Datei access.log"
lang_m7_apache   = " Zeige SSL Fehlerprotokollpfad error.log"
lang_m8_apache   = " Zeige SSL-Protokolldatei access.log"
lang_m9_apache   = " Zertifikat erzeugen"
lang_m10_apache  = " Apache Vhosts"
lang_m12_apache  = " Apache server-status"
lang_m13_apache  = " Apache server-info"
lang_m14_apache  = " Apache Module aktivieren/deaktivieren"
lang_m20_apache_spacer  = "----------------------------------------------"

'*** Sub-Apache Edit Basic Configuration ======================================

Const lang_ab_page_title              = "Grundlegende Apache-Konfiguration"
Const lang_ab_legend                  = "Häufigsten geänderten Parameter"
Const lang_ab_server_name             = "Server-Namen" 
Const lang_ab_admin_email             = "Server Admin Email" 
Const lang_ab_directory_indexs        = "Directory Index Files" 
Const lang_ab_server_side_includes    = "Server Side Includes" 
Const lang_ab_server_signature        = "Server Signature" 
Const lang_ab_listen                  = "Listen port" 
Const lang_ab_update_configuration_bt = "Update-Konfiguration" 
Const lang_ab_help_bt                 = "Hilfe" 

Const lang_ab_help_title              = "Grundlegende Apache-Konfiguration"
lang_ab_help_str                      = _
"Dieses Formular können Sie ändern häufig konfiguriert"                      & vbCRLF & _
"Apache-Optionen."                                                           & vbCRLF & vbCRLF & _
"So bearbeiten Sie Apache die gesamte Konfiguration, wählen Sie bearbeiten"  & vbCRLF & _
"httpd.conf vom Apache Dropdown-Menü."  

'*** Sub-Apache Generate Certificate ==========================================

Const lang_openssl_page_title          = "Server-Zertifikat und Key-Generator"
Const lang_openssl_cn                  = "Hostname oder Ihren vollständigen Namen"
Const lang_openssl_o                   = "Organisation/Unternehmen" 
Const lang_openssl_ou                  = "Abteilung"
Const lang_openssl_e                   = "Email"
Const lang_openssl_l                   = "Stadt/Ort"
Const lang_openssl_st                  = "Zustand"
Const lang_openssl_c                   = "Land"
Const lang_openssl_rsa_bits            = "RSA bits"
Const lang_openssl_bt_reload           = "Reload Defaults"
Const lang_openssl_bt_generate         = "Run generieren"

lang_openssl_cn_help_title             = "Hilfe - Gemeinsame Namen CN"
lang_openssl_cn_help =  _
"CN) Common Name, in der Regel den Web-Server Hostname oder Ihren Namen ein."   & vbCRLF &  _
" Zur Sicherung https://www.fred.com, ist Ihre gemeinsamen Namen www.fred.com"  & vbCRLF &  _ 
" oder *. fred.com für ein Wildcard-Zertifikat."

lang_openssl_o_help_title              = "Help - Organization O"
lang_openssl_o_help =  "(O) Organisation zum Beispiel My Inc."

lang_openssl_ou_help_title             = "Help - Organisation Unit OU"
lang_openssl_ou_help =  "(OU) Ihre Bereichs-oder Abteilungsleiter. Zum Beispiel, PHP Dept."

lang_openssl_email_help_title          = "Help - Email E"
lang_openssl_email_help =  _
"(E) In der Regel für eine E-Mail-Benutzer-Zertifikat angegeben"    & vbCRLF &  _
" für ActiveSync oder SMIM."

lang_openssl_l_help_title             = "Help - City/Local L"
lang_openssl_l_help =  "(L) City / Local Zum Beispiel, London."

lang_openssl_st_help_title            = "Hilfe - State ST"
lang_openssl_st_help =  "(ST) zum Beispiel, Cambridgeshire."

lang_openssl_c_help_title             = "Hilfe - Land C"
lang_openssl_c_help = _
"(C) Ländercode zwei Buchstaben."    & vbCRLF &  _
"Zum Beispiel 'United Kingdom' gibt 'UK' "

lang_openssl_rsa_help_title           = "Hilfe - RSA Bit Länge"
lang_openssl_rsa_help = _
"Zertifizierungsstellen sind nicht mehr die Ausstellung"          & vbCRLF &  _
"Zertifikate, die weniger als 2048 bit Schlüssellänge sind."      & vbCRLF &  _
"Empfohlen, diese Einstellung auf Standard von 2048 Bit verlassen." 

lang_openssl_ca_detected_title             = "CA gefunden"
lang_openssl_ca_detected = _
"Es sieht aus wie Sie mit Ihrem eigenen CA sind."                                & vbCRLF & vbCRLF & _
"Um zu vermeiden, überschreiben Ihre aktuellen Server-Zertifikat und Schlüssel"  & vbCRLF &  _
"Dieses Skript wurde beendet."                                                   & vbCRLF & vbCRLF & _
"So erstellen Sie eine neue Server-Zertifikat und Schlüssel, mit dem CA-Skript." 

lang_openssl_cert_detected_title             = "Server-Zertifikat gefunden"
lang_openssl_cert_detected = _
"Ein Server-Zertifikat gefunden wurde."                                       & vbCRLF & vbCRLF & _
"Möchten Sie die bestehende Server-Zertifikat und Schlüssel überschreiben"    & vbCRLF & vbCRLF & _
"                                          überschreiben?"

lang_openssl_generated_title             = "Server-Zertifikat erzeugt"
lang_openssl_generated = _
"Server-Zertifikat und Schlüssel generiert."                   & vbCRLF & vbCRLF & _
"Diese wurden installiert und"                                 & vbCRLF &  _
"SSL ist in der Apache-Konfigurationsdatei nicht aktiviert."   & vbCRLF & vbCRLF & _
"Starten Sie die Server für Veränderungen stattfinden."        & vbCRLF

'*** Sub-Apache APACHE VHOSTS =================================================

Const lang_av_apache_virtual_hosts_title  = "Apache Virtual Hosts"
Const lang_av_virtual_host_setup_frame    = "Virtual Host Setup"
Const lang_av_list_of_hosts_frame         = "Liste der Hosts"

Const lang_av_port_td                     = "Port"
Const lang_av_server_admin_td             = "Server Admin"
Const lang_av_document_root_td            = "Document Root"
Const lang_av_server_name_td              = "Server-Namen"
Const lang_av_server_alias_td             = "Server Alias"
Const lang_av_error_log_td                = "Fehlerprotokoll"
Const lang_av_custom_log_td               = "benutzerdefinierte Login"
Const lang_av_additions_td                = "zusätzliche Richtlinien"
Const lang_av_vhost_help_td               = "Hilfe Vhost"

Const lang_av_delete_bt                   = "löschen"
Const lang_av_update_vhost_bt             = "Update Vhost"
Const lang_av_create_vhost_bt             = "erstellen Vhost"
Const lang_av_cancel_bt                   = "stornieren"

Const lang_av_select_folder_bt            = "Ordner auswählen"
Const lang_av_confirm_name_bt             = "bestätigen"

Const lang_av_delete_vhost_bt             = "löschen Vhost"
Const lang_av_view_in_browser_bt          = "Im Browser anzeigen"
Const lang_av_cancel2_bt                  = "stornieren"

'--Port
Const lang_av_popup_title1                = "VHost Port"
lang_av_popup_str1                        = _
"Standard vhost-Port nutzt wichtigsten Server-Listening-Port."  & vbCRLF &  _   
"Diese Regel ist die Standard-Port 80. "                        & vbCRLF &  _   
"Multi-Threaded-Server-Menü Updates dieser Port."               & vbCRLF & vbCRLF &  _ 
"Sie können Port-Wert. Es wird festgelegt und"                  & vbCRLF &  _   
"nicht aktualisiert, wenn Multi-Server-Menü ausgeführt wird."

'--Server Admin
Const lang_av_popup_title2                = "Server Admin"
lang_av_popup_str2                        = _
"E-Mail-Adresse für die Website-Administrator."                & vbCRLF &  _  
"Dies ist von Server Name standardmäßig abgeleitete."          & vbCRLF & vbCRLF &  _ 
"Sie können unabhängig E-Mail bevorzugen Sie."                 & vbCRLF & vbCRLF &  _ 
"Alternativ löschen Sie diese löschen, indem Sie Taste."

'--Document Root
Const lang_av_popup_title3                = "Document Root"
lang_av_popup_str3                        = _
"Document Root ist der vollständige Pfad zu einem Ordner. Apache"    & vbCRLF &  _ 
"wird ein Host-Website aus diesem Ordner dienen."                    & vbCRLF & vbCRLF &  _ 
"1) Für Portabilität mit dem Standard-Pfad angezeigt;"               & vbCRLF &  _ 
"   ersetzen *** mit dem Ordner, den Sie verwenden möchten,."        & vbCRLF & vbCRLF &  _ 
"2) Alternativ können Sie die "" Ordner auswählen ""-Taste."         & vbCRLF &  _ 
"   In dem Popup zu navigieren, und wählen Sie gewünschten Ordner."  & vbCRLF &  _ 
"   Klicken Sie auf OK, um zu akzeptieren."                          & vbCRLF & vbCRLF &  _ 
"Note:"                                                              & vbCRLF &  _ 
" Das Skript ersetzt Backslashes mit"                                & vbCRLF &  _ 
" Schrägstriche. Wenn der Ordner nicht vorhanden ist, es"            & vbCRLF &  _ 
" erstellt werden."

'--Document Root Browse Folder Dialog
Const lang_av_folder_dialog_str1          = "Wählen Sie einen Ordner für Ihre Vhost Stammordner."
Const lang_av_folder_dialog_str2          = "Alternativ erstellen Sie einen neuen Ordner zu verwenden." 

'--Server Name - Host Name
Const lang_av_popup_title4                = "Server Name - Host Name"
lang_av_popup_str4                        = _
"Host-Name ist die Adresse, die Sie geben in"                & vbCRLF &  _             
"einen Browser, mit Ausnahme der http:// Teil."              & vbCRLF & vbCRLF &  _ 
"Beispiel 1:"                                                & vbCRLF &  _ 
"Full Internet address: http://www.me.com"                   & vbCRLF &  _ 
"Host name: www.me.com"                                      & vbCRLF & vbCRLF &  _ 
"Beispiel 2:"                                                & vbCRLF &  _ 
"Vollständige Internet-Adresse: http://uniserver.com"        & vbCRLF &  _ 
"Host name: uniserver.com"                                   & vbCRLF & vbCRLF &  _ 
"Nach der Eingabe Host Name auf das "" Bestätigen ""-Taste." & vbCRLF &  _ 
"Dies ermöglicht Menüoptionen und zeigt standardmäßig."      & vbCRLF &  _ 
"Ändern oder Löschen von Voreinstellungen entsprechend."

'---Server Alias
Const lang_av_popup_title5                = "Server Alias"
lang_av_popup_str5                        = _
"Server Alias ​​ermöglicht den Server zugegriffen werden, indem mehr"     & vbCRLF &  _ 
"als ein Name. "                                                        & vbCRLF & vbCRLF &  _ 
"Sie müssen einen DNS-Server korrekt konfiguriert Karte"                & vbCRLF &  _ 
"diese Namen in eine IP-Adresse mit Ihrem Server verbunden."            & vbCRLF & vbCRLF &  _ 
"Die Vorgaben angeboten werden, von Ihrem "" Host Name"" abgeleitet."   & vbCRLF &  _ 
"Ändern oder Löschen von Voreinstellungen entsprechend."

'---Error Log
Const lang_av_popup_title6                = "Fehlerprotokoll"
lang_av_popup_str6                        = _
"Die Direktive ErrorLog bestimmt den Namen der Datei, in die"                   & vbCRLF &  _ 
"wird der Server log irgendwelche Fehler aufgetreten. Wenn die Datei-Pfad"      & vbCRLF &  _ 
"ist nicht absolut so wird angenommen, dass in Bezug auf"                       & vbCRLF &  _ 
"the ServerRoot."                                                               & vbCRLF & vbCRLF &  _ 
"Der Standard angeboten wird von der abgeleiteten""Server Name""."              & vbCRLF &  _ 
"Ändern oder Löschen von Standard entsprechend."                                & vbCRLF & vbCRLF &  _ 
"Hinweis: Zur Minimierung der Dateiressourcen löschen Sie diese Option. Fehler" & vbCRLF &  _ 
"werden Haupt-Server-Datei protokolliert werden.  "

'---Custom Log
Const lang_av_popup_title7                = "benutzerdefinierte Login"
lang_av_popup_str7                        = _
"Die CustomLog Direktive legt den Namen der Datei, in die"                       & vbCRLF &  _ 
"wird der Server log Zugriff auf Informationen. Wenn die Datei-Pfad"             & vbCRLF &  _ 
"ist nicht absolut so wird angenommen, dass in Bezug auf"                        & vbCRLF &  _ 
"the ServerRoot."                                                                & vbCRLF & vbCRLF &  _ 
"Der Standard angeboten wird von der abgeleiteten ""Server Name"""                & vbCRLF &  _ 
"Ändern oder Löschen von Standard entsprechend."                                 & vbCRLF & vbCRLF &  _ 
"Hinweis: Zur Minimierung der Dateiressourcen löschen Sie diese Option. Greift"  & vbCRLF &  _ 
"werden Haupt-Server-Access-Datei protokolliert werden.  "

'--Additional Directives
Const lang_av_popup_title8                = "Additional Apache-Direktiven"
lang_av_popup_str8                        = _
"Additional Apache-Direktiven"                                               & vbCRLF &  _
"Jeder Vhost erbt die Einstellungen aus dem Haupt-"                          & vbCRLF &  _
"Server-Konfiguration."                                                      & vbCRLF & vbCRLF &  _  
"Platzieren dieser Richtlinien in einem Vhost wird"                          & vbCRLF &  _
"überschreiben wichtigsten Server-Einstellungen so dass jeder"               & vbCRLF &  _
"Vhost selbständig angepasst werden."                                        & vbCRLF & vbCRLF &  _ 
"Beispiel 1: Sie können Code zwischen den gestrichelten Linien erfordern:"   & vbCRLF & vbCRLF &  _ 
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

Const lang_av_popup_title9       = "Document Root Folder Fehler"
Const lang_av_popup_str9         = "Bitte eneter oder wählen Sie eine Dokument-Root-Ordner"

Const lang_av_popup_title10      = "Server Name Fehler"
Const lang_av_popup_str10        = "Bitte eneter einen Server-Namen"

Const lang_av_popup_title11      = "Server Name Fehler"
Const lang_av_popup_str11        = "Server Name existiert bereits in der Konfigurationsdatei!"

Const lang_av_popup_title12      = "Löschen Stammordner"
Const lang_av_popup_str12        = "Wollen Sie root Ordner löschen?"

Const lang_av_popup_title13      = "Vhost Konfiguration aktualisiert"
Const lang_av_popup_str13        = "Für die Änderungen wirksam werden neu starten Apache-Server"

'******************************************************************************
' MySQL - Server configuration
'******************************************************************************

lang_m1_mysql  = " MySQL"
lang_m2_mysql  = " Passwort ändern"
lang_m3_mysql  = " wiederherstellen Passwort"

lang_m4_mysql  = " bearbeiten my.ini"
lang_m5_mysql  = " View Error Log-Datei mysql.err"

lang_m6_mysql  = " Create löschen Database"
lang_m7_mysql  = " Erstellen Restricted MySQL User"
lang_m8_mysql  = " Bearbeiten Restricted MySQL User"
lang_m9_mysql  = " InnoDB Aktivieren/Deaktivieren"

lang_m20_mysql_spacer  = "---------------------------------------"

'*** Sub-MySQL Change Password ================================================

Const lang_new_mysql_password_title    = "Set New MySQL-Passwort"
Const lang_new_pass_mysql_legend       = "Set New MySQL Password Status" 
Const lang_new_pass_starting_1         = "Ab MySQL-Server"
Const lang_new_setting_new_password    = "Neues Passwort setzen"
Const lang_new_popup_title             = "MySQL Root-Passwort"
Const lang_new_popup_str               = "MySQL-root-Passwort wurde geändert"

Const lang_new_enter_pass_mysql_legend = "Geben Sie ein neues Passwort"
Const lang_new_change_mysql_password   = "Passwort ändern"
Const lang_new_error_title             = "Fehler"
Const lang_new_error_str               = "Bitte geben Sie ein Passwort"

'*** Sub-MySQL Restore Password ===============================================

Const lang_restore_mysql_password_title  = "Wiederherstellen MySQL-Passwort"
Const lang_restore_mysql_legend          = "Wiederherstellen MySQL Passwort" 
Const lang_restore_stopping_kill         = "Stoppen oder Tötung Server"
Const lang_restore_start_nogrant         = "Starten Sie MySQL Server ohne Zuschuss"
Const lang_restore_root                  = "Wiederherstellen Passwort root"
Const lang_restore_kill_no_grant         = "Das Töten kein Zuschuss MySQL-Server"
Const lang_restore_initial               = "Wiederherstellen anfänglichen MySQL-Server Zustand"

Const lang_restore_run_legend            = "wiederherstellen Passwort"
Const lang_restore_run_button            = "Run wiederherstellen"

Const lang_restore_popup_title           = "MySQL-Passwort"
Const lang_restore_popup_str             = "MySQL-Passwort wurde restauriert"


'*** Sub-MySQL Create delete Database =========================================

Const lang_create_delete_mysql_db_title   = "Erstellen Löschen MySQL-Datenbank"
Const lang_create_database_mysql_legend   = "Erstellen einer Datenbank" 
Const lang_clear_both_mysql_legend        = "klare Beide" 
Const lang_delete_database_mysql_legend   = "Löschen einer Datenbank" 

Const lang_enter_name_to_create_mysql     = "Geben Sie Namen der Datenbank zu erstellen" 
Const lang_select_name_to_delete_mysql    = "Wählen Sie Datenbank zu löschen" 

Const lang_create_database_mysql_bt       = "Datenbank erstellen" 
Const lang_clear_both_mysql_bt            = "klare Beide" 
Const lang_delete_database_mysql_bt       = "Datenbank löschen" 

Const lang_create_mysql_popup_title1      = "Fehler"
Const lang_create_mysql_popup_str1        = "Bitte geben Sie einen Datenbanknamen"

Const lang_create_mysql_popup_title2      = "Fehler"
Const lang_create_mysql_popup_str2        = "Die Datenbank wurde bereits erstellt!"

Const lang_create_mysql_popup_title3      = "Fehler"
Const lang_create_mysql_popup_str3        = "Keine Datenbank ausgewählt"

Const lang_create_mysql_popup_title4      = "MySQL wird nicht ausgeführt"
Const lang_create_mysql_popup_str4        = "So verwenden Sie diesen Menüpunkt starten Sie den MySQL-Server"

'*** Sub-MySQL Create Restricted MySQL User ===================================

Const lang_create_restricted_mysql_user_title   = "Erstellen Restricted MySQL User"
Const lang_cr_mysql_create_legend               = "Erstellen Sie durch Einschränkungen bestimmter Benutzer"
Const lang_cr_mysql_privileges_legend           = "Vorrechte"
Const lang_cr_mysql_option_select_db            = "Option wählen Sie eine Datenbank"
Const lang_cr_mysql_user_name                   = "Benutzername"
Const lang_cr_mysql_user_password               = "Kennwort"
Const lang_cr_mysql_database_name               = "Datenbank"

Const lang_cr_mysql_select                      = "wählen"
Const lang_cr_mysql_insert                      = "einfügen"
Const lang_cr_mysql_update                      = "Aktualisierung"
Const lang_cr_mysql_delete                      = "löschen"
Const lang_cr_mysql_create                      = "schaffen"
Const lang_cr_mysql_drop                        = "Tropfen"
Const lang_cr_mysql_alter                       = "ändern"
Const lang_cr_mysql_index                       = "Index"

Const lang_cr_mysql_cancel_bt                   = "stornieren"
Const lang_cr_mysql_create_bt                   = "Benutzer erstellen"
Const lang_cr_mysql_help_bt                     = "Hilfe"

Const lang_cr_mysql_popup_title1                = "Benutzername Leer"
Const lang_cr_mysql_popup_str1                  = "Bitte geben Sie einen Benutzernamen"

Const lang_cr_mysql_popup_title2                = "Password leer"
Const lang_cr_mysql_popup_str2                  = "Bitte geben Sie einen Benutzer-Passwort"

Const lang_cr_mysql_popup_title3                = "Database Name Leer"
Const lang_cr_mysql_popup_str3                  = "Bitte geben Sie oder wählen Sie einen Datenbank-Namen"

Const lang_cr_mysql_popup_title4                = "erstellt"
Const lang_cr_mysql_popup_str4                  = "Restricted MySQL User Created"

Const lang_cr_mysql_popup_help_title            = "Restricted MySQL User - Hilfe"
lang_cr_mysql_popup_help_str                    = _
"Dieser Menüpunkt erstellt eine MySQL-Benutzer mit eingeschränkten Rechten."       & vbCRLF & vbCRLF & _  
"Geben Sie einen Benutzernamen und ein Passwort."                                  & vbCRLF & _                 
"Wählen Sie den gewünschten User-Privilegien."                                     & vbCRLF & vbCRLF & _        
"Dieser Benutzer ist die Verwendung einer einzigen Datenbank beschränkt."          & vbCRLF & _    
"Geben Sie einen Datenbank-Namen ein oder wählen Sie aus der Liste der Optionen."  & vbCRLF & _      
"Wenn die Datenbank nicht beendet es erstellt wird."             

'*** Sub-MySQL Edit Restricted MySQL User =====================================

Const lang_edit_restricted_mysql_user_title     = "Bearbeiten Restricted MySQL User"
Const lang_er_mysql_edit_legend                 = "Bearbeiten Einschränkungen bestimmter Benutzer-"
Const lang_er_mysql_privileges_legend           = "Vorrechte"
Const lang_er_mysql_select_user                 = "Wählen Sie einen Benutzer"
Const lang_er_mysql_user_name                   = "Benutzername"
Const lang_er_mysql_user_password               = "Kennwort"
Const lang_er_mysql_database_name               = "Datenbank"

Const lang_er_mysql_select                      = "wählen"
Const lang_er_mysql_insert                      = "einfügen"
Const lang_er_mysql_update                      = "Aktualisierung"
Const lang_er_mysql_delete                      = "löschen"
Const lang_er_mysql_create                      = "schaffen"
Const lang_er_mysql_drop                        = "Tropfen"
Const lang_er_mysql_alter                       = "ändern"
Const lang_er_mysql_index                       = "Index"

Const lang_er_mysql_cancel_bt                   = "stornieren"
Const lang_er_mysql_update_bt                   = "Update User"
Const lang_er_mysql_help_bt                     = "Hilfe"
Const lang_er_mysql_delete_bt                   = "löschen"

Const lang_er_mysql_popup_title1                = "Benutzername Leer"
Const lang_er_mysql_popup_str1                  = "Bitte geben Sie einen Benutzernamen"

Const lang_er_mysql_popup_title2                = "Password leer"
Const lang_er_mysql_popup_str2                  = "Bitte geben Sie einen Benutzer-Passwort"

Const lang_er_mysql_popup_title3                = "Database Name Leer"
Const lang_er_mysql_popup_str3                  = "Bitte geben Sie oder wählen Sie einen Datenbank-Namen"

Const lang_er_mysql_popup_title4                = "erstellt"
Const lang_er_mysql_popup_str4                  = "Restricted MySQL User Created"

Const lang_er_mysql_popup_title5                = "aktualisiert"
Const lang_er_mysql_popup_str5                  = "Restricted MySQL User Aktualisiert"

Const lang_er_mysql_popup_help_title            = "Bearbeiten Restricted MySQL User - Hilfe"
lang_er_mysql_popup_help_str                    = _
"Von diesem Menüpunkt können Sie entweder löschen"                           & vbCRLF & _ 
"oder Aktualisieren eines eingeschränkten MySQL-Benutzer."                   & vbCRLF & vbCRLF & _  
"löschen:"                                                                   & vbCRLF & _                                                        
"Wählen Sie Benutzer aus der Liste und klicken Sie auf Löschen-Taste "       & vbCRLF & vbCRLF & _             
"Update:  "                                                                  & vbCRLF & _ 
"Wählen Sie Benutzer aus der Liste. Ändern Sie die gewünschten Parameter. "  & vbCRLF & _ 
"Klicken Sie auf Aktualisieren Schaltfläche Benutzer."

'*** Sub-MySQL InnoDB Enable/Disable ==========================================
Const lang_innodb_mysql_str1                  = "aktivieren Sie InnoDB"

'******************************************************************************
' PHP - Server configuration
'******************************************************************************

lang_m1_php  = " PHP"
lang_m2_php  = " Bearbeiten Sie das Basis-Konfiguration"
lang_m3_php  = " Bearbeiten Current Configuration File: php.ini"
lang_m4_php  = " Bearbeiten Produktion Konfigurationsdatei: php_production.ini"
lang_m5_php  = " Bearbeiten Entwicklung Konfigurationsdatei: php_development.ini"
lang_m6_php  = " Bearbeiten Command Line Configuration file: php-cli.ini"
lang_m7_php  = " Wechseln Sie zu Entwicklung Konfigurationsdatei"
lang_m8_php  = " Umstellung der Produktion Konfigurationsdatei"
lang_m9_php  = " phpinfo () - Display PHP Informationen"
lang_m10_php = " PHP Accelerators APC and eAccelerator and ZOP"
lang_m11_php = " Pear Bedienfeld"
lang_m12_php = " PHP Extensions Aktivieren/Deaktivieren"

lang_m20_php_spacer  = "----------------------------------------------------------------------------"

'*** Sub-PHP Edit Basic Configuration =========================================

Const lang_php_page_title                          = "Grundlegende PHP-Konfiguration"
Const lang_php_current_frame                       = "Strom"
Const lang_php_development_frame                   = "Entwicklung"
Const lang_php_production_frame                    = "Produktion"

Const lang_php_safe_mode_label                     = "Safe Mode"
Const lang_php_Show_PHP_in_server_signature_label  = "Show PHP In Server Signature"
Const lang_php_register_globals_label              = "Register Globals"
Const lang_php_maximum_script_execute_time_label   = "Maximale Script Execute Zeit (s.)"
Const lang_php_maximum_memory_amount_label         = "Maximale Speicherkapazität: (MB)"
Const lang_php_display_errors_label                = "Fehler anzeigen"
Const lang_php_maximum_post_size_label             = "Maximale Größe Beitrag"
Const lang_php_maximum_upload_size_label           = "Maximale Upload-Größe"
Const lang_php_short_open_tags_label               = "Short Open Tags"
Const lang_php_display_startup_errors_label        = "Anzeige Startfehler"
Const lang_php_track_errors_label                  = "Nachverfolgen von Fehlern"
Const lang_php_html_errors_label                   = "hTML-Fehler"
Const lang_php_variables_order_label               = "Variablen, um"

Const lang_php_help_bt                             = "Hilfe"
Const lang_php_update_bt                           = "Aktualisierung"

'-- Current updated
Const lang_php_current_config_title              = "PHP Aktuelle Aktualisiert"
lang_php_current_config_str                      = _
"Die aktuelle PHP-Konfigurationsdatei wurde aktualisiert"       & vbCRLF & vbCRLF & _
"Für die Änderungen wirksam werden neu starten Apache-Server"

'-- Development updated
Const lang_php_develpopment_config_title         = "PHP-Entwicklung aktualisiert"
lang_php_develpopment_config_str                 = _
"Die Entwicklung PHP-Konfigurationsdatei wurde aktualisiert "                           & vbCRLF & vbCRLF & _
"Für die Änderungen wirksam werden:  "                                                  & vbCRLF & vbCRLF & _
" 1] Wechseln Sie zu der Entwicklung dieses ersetzt die aktuelle Konfigurationsdatei."  & vbCRLF & _
" 2] Starten Sie den Apache-Server"

'-- Production updated
Const lang_php_production_config_title           = "PHP Produktion Aktualisiert"
lang_php_production_config_str                   = _
"Die Produktion PHP-Konfigurationsdatei wurde aktualisiert"                        & vbCRLF & vbCRLF & _
"Für die Änderungen wirksam werden:"                                               & vbCRLF & vbCRLF & _
" 1] Schalten Sie die Produktion dieses ersetzt die aktuelle Konfigurationsdatei." & vbCRLF & _
" 2] Starten Sie den Apache-Server" 

'-- Main help
Const lang_php_config_main_help_title              = "PHP-Konfiguration"
lang_php_config_main_help_str                      = _
"Dieses Formular können Sie üblicherweise so konfiguriert PHP-Optionen ändern"                & vbCRLF & vbCRLF & _ 
"Aktuelle PHP INI-Datei:"                                                                     & vbCRLF & _ 
"  Die Umstellung auf die Entwicklung oder die Produktion überschreibt diese Datei"           & vbCRLF & vbCRLF & _ 
"PHP Entwicklung ini-Datei."                                                                  & vbCRLF & _ 
"  Ermöglicht Fehler auf dem Bildschirm geschrieben werden. Sie können die anderen"           & vbCRLF & _ 
"  Parameter für die Prüfung."                                                                & vbCRLF & vbCRLF & _ 
"PHP Produktion ini-Datei."                                                                   & vbCRLF & _ 
"  Verhindert Fehler werden auf dem Bildschirm geschrieben. Einstellungen die Sicherheit zu." & vbCRLF & _ 
"  Zum Beispiel sind globals standardmäßig deaktiviert."  

'*** Sub-PHP Switch to Development/Production Configuration file ==============

Const lang_php_switching_title         = "PHP-Konfigurationsdatei" 
Const lang_php_switched_to_production  = "Configuration-Datei zur Produktion umgestellt" 
Const lang_php_switched_to_development = "Configuration-Datei muss Develpopment eingeschaltet"

'*** Sub-PHP PHP Accelerators eAccelerator and APC and ZOP =====
Const lang_accel_eaccelerator_legend   = "eAccelerator"
Const lang_accel_eaccelerator_bti      = "eAccelerator Bedienfeld"
Const lang_accel_eaccelerator_txt1     = "ermöglichen eAccelerator"


Const lang_accel_apc_legend            = "APC"
Const lang_accel_apc_bti               = "APC Bedienfeld"
Const lang_accel_apc_txt1              = "ermöglichen APC"

Const lang_accel_zop_legend            = "Zend OpCache"
Const lang_accel_zop_bti               = "Zend OpCache Bedienfeld"
Const lang_accel_zop_txt1              = "Aktivieren Zend OpCache-"

Const lang_accel_title                 = "PHP-Konfiguration"
lang_accel_str                         = _
"PHP-Konfigurationsdateien wurden aktualisiert."   & vbCRLF & vbCRLF & _
"Starten Sie die Server für Veränderungen stattfinden." 



'*** Sub-PHP Pear Control ==============

Const lang_pear_leg             = "Pear Steuerung"
Const lang_pear_install_bt      = "Install Pear"
Const lang_pear_frontend_bt     = "Zeige Pear Front-end"


'******************************************************************************
' MSMPT - Server configuration
'******************************************************************************

lang_m1_msmpt = " MSMPT"
lang_m2_msmpt = " Bearbeiten MSMPT Configuration"
lang_m3_msmpt = " Standard-Account"
lang_m4_msmpt = " Blick Log"
lang_m5_msmpt = " Send Test E-Mail"
lang_m20_msmpt_spacer  = "--------------------------------------"

'*** Sub-MSMPT Default Account/Send Test E-Mail ===============================

Const lang_msmpt_account_frame         = "MSMPT Wählen Sie Standard-Account"
Const lang_msmpt_email_test_frame      = "MSMPT Senden Sie eine Test E-Mail"
Const lang_msmpt_email_to              = "E-Mail zu"
Const lang_msmpt_subject               = "Thema"
Const lang_msmpt_message               = "Nachricht"  
Const lang_msmpt_send_mail_bt          = "E-Mail senden"

Const lang_msmpt_email_to_user_input   = "mexxx@tiscali.co.uk"
Const lang_msmpt_subject_user_input    = "UniServer Test"
Const lang_msmpt_message_user_input    = "Test Message 1. Löschen und verwenden Sie Ihre eigenen!" 

Const lang_msmpt_test_title            = "E-Mail-Test"
Const lang_msmpt_test_str              = "Test-E-Mail verschickt"

'******************************************************************************
' CRON  - Server configuration
'******************************************************************************

lang_m1_cron = " CRON"
lang_m2_cron = " Bearbeiten Cron Konfiguration"
lang_m3_cron = " cron-Controller"
lang_m4_cron = " Blick Log"
lang_m20_cron_spacer  = "-----------------------------------"

'*** Sub-CRON Cron Controller =================================================
Const lang_cron_program_legend         = "Run Cron als Programm"
Const lang_cron_program_start          = "Start"
Const lang_cron_program_stop           = "Stopp"

Const lang_cron_service_legend         = "Run Cron als Dienst"
Const lang_cron_service_install_run    = "Installieren und Ausführen von Service-"
Const lang_cron_service_stop_uninstall = "Stop and Uninstall Service"

'******************************************************************************
' DtDNS - Server configuration
'******************************************************************************

lang_m1_dtdns = " DtDNS"
lang_m2_dtdns = " Bearbeiten DtDNS Accounts"
lang_m3_dtdns = " Kraft DtDNS UPDATE"
lang_m4_dtdns = " aktivieren Login"
lang_m5_dtdns = " Blick Log"
lang_m6_dtdns = " Aktivieren Sie in CRON"
lang_m20_dtdns_spacer  = "----------------------------------"

'*** Sub-DtDNS Force DtDNS UpDATE =============================================

Const lang_dtdns_popup_title       = "DtDNS Force Update"
lang_dtdns_popup_str               = _
"DtDNS wurde manuell aktualisiert"   & vbCRLF & vbCRLF &  _
"Protokoll ansehen Details." 

'******************************************************************************
' DbBackup - Server configuration
'******************************************************************************

lang_m1_db_backup = " DB Backup"
lang_m2_db_backup = " Bearbeiten DB Backup Config"
lang_m3_db_backup = " Force DB  Backup"
lang_m4_db_backup = " aktivieren Sie log"
lang_m5_db_backup = " Blick Log"
lang_m6_db_backup = " Enable In Cron"

lang_m7_db_backup = " Wählen DBs zu sichern"
lang_m8_db_backup = " Wiederherstellen DBs aus dem Backup"
lang_m20_db_backup_spacer  = "-------------------------------------------"

'*** Sub-DbBackup Force DB  Backup ============================================

Const lang_dbbackup_popup_title        = "DB Force Backup"
lang_dbbackup_popup_str                = _
"Die Datenbank wurde manuell gesichert"   & vbCRLF & vbCRLF &  _
"Protokoll ansehen Details." 

'*** Sub-DbBackup Select DBs to backup ========================================

Const lang_db_select_title               = "Wählen Sie Backup-Datenbanken"
Const lang_db_select_databases_legend    = "MySQL-Datenbanken"
Const lang_db_select_to_backup_legend    = "Datenbanken für Backup"
Const lang_db_select_database_to_backup  = "Wählen Sie Datenbank-Backup"
Const lang_db_select_delete_or_save      = "Delete item from file"
Const lang_db_select_clear_bt            = "klar"
Const lang_db_select_add_bt              = "hinzufügen >>"
Const lang_db_select_delete_bt           = "löschen"
Const lang_db_select_help_bt             = "Hilfe"

Const lang_db_select_popup_title1        = "Fehler"
Const lang_db_select_popup_str1          = "Keine Datenbank ausgewählt"

Const lang_db_select_popup_title2        = "Fehler"
Const lang_db_select_popup_str2          = "Die Datenbank wurde bereits containined in Liste"

Const lang_db_select_popup_help_title          = "Wählen Sie Datenbanken zu sichern - Hilfe"
lang_db_select_popup_help_str                  = _
"Wählen Sie Datenbank-Backup:"                                                             & vbCRLF & vbCRLF & _ 
"Eine Liste von MySQL-Datenbanken auf der linken Seite gezeigt."                           & vbCRLF & _ 
"Wählen Sie eine Datenbank zu sichern, und drücken Sie Schaltfläche Hinzufügen."           & vbCRLF & _ 
"Ausgewählten Datenbank in einem Ordner gespeichert und auf"                               & vbCRLF & _ 
"das Recht."                                                                               & vbCRLF & vbCRLF & _ 
"Delete item from file:"                                                                   & vbCRLF & vbCRLF & _ 
"Eine Liste der Datenbanken, die gesichert werden sich auf der rechten Seite angezeigt."   & vbCRLF & _ 
"Dies sind die aktuellen Einträge in einer Datei gespeichert."                             & vbCRLF & _ 
"Zum Löschen eines Eintrags wählen Sie eine Datenbank aus der Liste und"                   & vbCRLF & _ 
"Klicken Sie die Schaltfläche Löschen. "                                                   & vbCRLF & vbCRLF & _ 
"Hinweis: Speicherort der Datei"                                                           & vbCRLF & _ 
"UniServer\uni_con\db_backup\dbs_to_backup.txt"                                            & vbCRLF & vbCRLF & _ 
"Diese Datei wird von Force-DB-Backup verwendet"                                           & vbCRLF & _ 
"und oder automatisches Backup mit Cron."

'*** Sub-DbBackup Restore DBs from backup =====================================

Const lang_db_restore_title               = "Datenbank wiederherstellen aus Sicherung"
Const lang_db_restore_databases_legend    = "Wiederherstellen MySQL-Datenbank"
Const lang_db_restore_select_name         = "Wählen Sie Datenbank wiederherstellen"

Const lang_db_restore_bt                  = "wiederherstellen"
Const lang_db_restore_help_bt             = "Hilfe"

Const lang_db_restore_popup_title1        = "Fehler"
Const lang_db_restore_popup_str1          = "No Database Backup ausgewählt"

Const lang_db_restore_popup_title2        = "restauriert"
Const lang_db_restore_popup_str2          = "Die Datenbank wurde wiederhergestellt"

Const lang_db_restore_popup_help_title    = "Wiederherstellen MySQL-Datenbank - Hilfe"
lang_db_restore_popup_help_str            = _
"Dieser Menüpunkt ermöglicht es Ihnen, eine Datenbank aus wiederherstellen"                          & vbCRLF & _ 
"eine Backup-Datei."                                                                                 & vbCRLF & vbCRLF & _ 
"Restore:"                                                                                           & vbCRLF & _ 
"Eine Liste der MySQL-Backups wird angezeigt."                                                       & vbCRLF & _  
"Wählen Sie eine Datenbank wiederherstellen und klicken Sie auf die Schaltfläche Wiederherstellen."  & vbCRLF & vbCRLF & _  
"Dateiformat: dbname_time stamp_.sql"

'******************************************************************************
' Perl - Server configuration
'******************************************************************************

lang_m1_perl = " PERL"
lang_m2_perl = " Perl Bedienfeld"
lang_m20_perl_spacer  = "----------------------------"

'*** Sub-Perl Force Shebang Update/Convert Win2Nix/Run Test Script ============

Const lang_perl_control_legend        = "Perl Bedienfeld"
Const lang_perl_force_update          = "Force Shebang Update"
Const lang_perl_convert_win2nix       = "konvertieren Win2Nix"
Const lang_perl_run_test_script       = "Run Test Script"

Const lang_perl_popup_title1           = "Perl-Fehler - Perl nicht installiert!"
lang_perl_popup_str1                   = _
"Wie Perl zu installieren:"                                   & vbCRLF  & vbCRLF &  _                          
"Navigieren Sie zum Ordner UniServer\alt_diag\install_perl"   & vbCRLF &  _ 
"und folgen Sie den Anweisungen in der Read_me.txt file"      & vbCRLF  & vbCRLF &  _  
"Ausgegraut Menüoptionen werden dann zur Verfügung stehen."

Const lang_perl_popup_title2           = "Perl Shebang Aktualisiert"
lang_perl_popup_str2                   = _
"Aktualisiert Shebang in Dateien: *.pl and *.cgi"            & vbCRLF  & vbCRLF &  _      
"für Ordner UniServer\cgi-bin and all sub-folders." 

Const lang_perl_popup_title3           = "Datei nicht gefunden"
Const lang_perl_popup_str3             = "Datei konnte nicht finden index.pl" 

Const lang_perl_popup_title4           = "Force-Shebang Update-"
lang_perl_popup_str4                   = _
"Perl-Skripte auf Unix entwickelt werden, nicht auf einem Windows Rechner laufen"       & vbCRLF &  _            
"sie erfordern die Umstellung auf ein Windows-Format."                                  & vbCRLF  & vbCRLF &  _ 
" Dieses Skript ersetzt die Unix Shebang mit einem Windows-Shebang"                     & vbCRLF &  _       
" ermöglicht dem Apache, den Perl-Interpreter finden"                                   & vbCRLF & vbCRLF &  _  
"Hinweis: Nach der Installation von Drittanbieter-Scripts cgi-bin laufen"               & vbCRLF &  _ 
"Force-Shebang Update. Danach wird die Shebang wird automatisch aktualisiert"           & vbCRLF &  _ 
"wenn Server verschoben werden. Denken Sie daran, zu korrigieren Shebang für neue Skripte verwenden."

Const lang_perl_popup_title5           = "konvertieren Win2Nix"
lang_perl_popup_str5                   = _
"Perl-Skripten unter Windows entwickelt werden, nicht auf einem Unix-Rechner laufen"     & vbCRLF &  _          
" sie erfordern Umstellung auf ein Unix-Format."                                         & vbCRLF  & vbCRLF &  _   
" Dieses Skript kopiert alle Dateien in cgi-bin in einen neuen Ordner \cgi-bin-unix\"    & vbCRLF &  _      
" Skripte in diesen neuen Ordner sind von Windows auf Unix-Format konvertiert. "         & vbCRLF  & vbCRLF &  _     
" a) Konvertiert zum Ende der Zeile:  Dec(#10#13=>#13) Hex 0D0A to 0A"                   & vbCRLF &  _ 
"                                     CR+LF to LF"                                       & vbCRLF &  _ 
" b) Ersetzt Windows-Kram mit Unix Shebang"                             

Const lang_perl_popup_title6           = "Run Test Script"
lang_perl_popup_str6                   = _
"Eine Standard-Installation von The Uniform Server enthält index.pl Testseite "                   & vbCRLF &  _ 
"befindet sich im Ordner UniServer \ cgi-bin. Dies kann durch Klicken auf die ausgeführt werden"  & vbCRLF &  _ 
"Run Test Script-Taste."                                                                          & vbCRLF  & vbCRLF &  _ 
"Hinweis: Diese Seite kann mit Ihrem eigenen index.pl Datei ersetzt werden.  "                    & vbCRLF &  _ 
"Run Test Script-Taste wird dann eine Abkürzung, um Ihre Anwendung auszuführen."


'###-END-###


