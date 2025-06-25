'******************************************************************************
' Language file - Coral Series
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

Const lang_view_www   = "Посмотреть WWW"   'User button text
Const lang_view_ssl   = "Посмотреть SSL"   'User button text

'-------------------------------------------------- End User Configuration ---

'******************************************************************************
' Messages common functions
'******************************************************************************

Const lang_cf_title1            = "Создание базы данных MySQL"
Const lang_cf_str1              = "Существует уже база данных с таким именем"

Const lang_cf_title2            = "Удаление базы данных MySQL"
Const lang_cf_str2              = "Существует нет базы данных с таким именем"

Const lang_cf_title3            = "запрашиваемый файл"
Const lang_cf_str3              = "Не найдено"

'******************************************************************************
' Initial Start Up
'******************************************************************************

'*** Space Check ==============================================================

Const lang_space_popup_title1         = "Космические обнаружен!"
lang_space_popup_str1                 = _
"Пространство было обнаружено в имени папки, ведущих к папке UniServer"               & vbCRLF & vbCRLF &  _
"К сожалению, пробелы недопустимы в путях"                                            & vbCRLF & _
"Пожалуйста, исправьте и попробуйте снова."                                           & vbCRLF & vbCRLF &  _
"Причины этого ограничения:"                                                          & vbCRLF & _
"Возможность запуска унаследованных приложений."                                      & vbCRLF & _
"Это также позволяет избежать ограниченного права на запись в C: \ Program Files."    & vbCRLF & vbCRLF &  _
"Примечание:"                                                                         & vbCRLF & _
"Если вы хотите запустить единого сервера, содержащие пробелы в пути"                 & vbCRLF & _
"использование виртуального привода, как поясняется в документе run_on_drive_w.txt"   & vbCRLF & _
", расположенный в папке UniServer\alternative_control. Подходит только"              & vbCRLF & _
"когда серверы работать как программа"

'*** Pre Check ================================================================

Const lang_pre_popup_title1         = "Предупреждение Порты в использовании!"
Const lang_pre_in_use               = "Следующие порты в использовании:"
Const lang_pre_port_number          = "номер порта"
Const lang_pre_pid                  = "PID"
Const lang_pre_process_name         = "имя процесса"
Const lang_pre_path_to_process      = "Путь к процессу"
lang_pre_popup_str1                 = _
"Для начала единого сервера, выше порты должны быть свободными."  & vbCRLF &  _
"Либо остановить и удалить конфликтующие приложения"              & vbCRLF &  _
"или переместить единого сервера на разных портах."

Const lang_pre_popup_title2         = "Изменение MySQL пароль!"
lang_pre_popup_str2                 = _
"Для развития сервере не существует реальная потребность в "     & vbCRLF & _
"Изменение пароля MySQL, хотя это хорошо"                        & vbCRLF & _
"практике это сделать."                                          & vbCRLF & vbCRLF &  _
"Если вы собираетесь использовать ваш сервер для производства"   & vbCRLF & _ 
"или положить их в Интернете или интрасети, это"                 & vbCRLF & _ 
"Необходимо установить новый пароль MySQL.по умолчанию"          & vbCRLF & _
"Пароль будет опубликован, так что ваш сервер уже"               & vbCRLF & _
"скомпрометирована."                                             & vbCRLF & vbCRLF &  _
"Нажмите YES для изменения пароля (открывается в новом окне)"    & vbCRLF &  _
"Или НЕТ, чтобы пропустить установка пароля."

Const lang_pre_popup_title4         = "Запуск варианты пропустил!"
lang_pre_popup_str4                 = _
"Вы пропустили один или несколько запуска опций конфигурации."   & vbCRLF &  _ 
"Следующем запуске Коралловые вы снова будет предложено."        & vbCRLF & vbCRLF &  _
"Вы можете отключить запрос, установив nag_user = false"         & vbCRLF &  _
"в config_tracker.ini"                                           & vbCRLF & vbCRLF &  _
"альтернатива:"                                                  & vbCRLF &  _
"Нажмите YES для автоматического отключения запроса"             & vbCRLF &  _
"Нажмите NO получать сообщения при следующем запуске сервера" 

'*** ZoneAlarm ================================================================

Const lang_za_popup_title1         = "Предупреждение ZoneAlarm обнаружен!"
lang_za_popup_str1                 = _
"Применение ZoneAlarm конфликтов с Apache"               & vbCRLF &  _ 
"производство синий экран смерти, когда Apache закрыт."  & vbCRLF & vbCRLF &  _
"Рекомендация EXIT ZoneAlarm до закрытия Apache"         & vbCRLF &  _
"а еще лучше удалить ZoneAlarm."            

'******************************************************************************
' Main menus - Program and Service
'******************************************************************************

'*** Run As Program ===========================================================

Const lang_legend_start_stop_servers = "Начало/Стоп серверов" 
Const lang_start_apache              = "Начало Apache"
Const lang_stop_apache               = "Стоп Apache"
Const lang_start_mysql               = "Начало MySQL" 
Const lang_stop_mysql                = "Стоп MySQL" 
Const lang_start_both                = "Начало обеих"
Const lang_stop_both                 = "Стоп Оба"

Const lang_program_title1            = "Apache Начало Ошибка"
Const lang_program_str1              = "Не удается запустить сервер Apache"

Const lang_program_title2            = "Apache Ошибка STOP"
Const lang_program_str2              = "Не в силах остановить Apache сервера"

Const lang_program_title3            = "MySQL Начало Ошибка"
Const lang_program_str3              = "Не удается запустить сервер MySQL"

Const lang_program_title4            = "MySQL Ошибка STOP"
Const lang_program_str4              = "Не в силах остановить сервер MySQL"

'*** Run As Service ===========================================================

Const lang_legend_start_stop_services  = "Начало/Стоп услуги"

Const lang_install_apache_service      = "Установка Apache службы" 
Const lang_uninstall_apache_service    = "Удаление Apache службы"
Const lang_start_apache_service        = "Начало службы Apache"
Const lang_stop_apache_service         = "Стоп Apache службы" 

Const lang_install_mysql_service       = "Установите службы MySQL"
Const lang_uninstall_mysql_service     = "Удаление службы MySQL"
Const lang_start_mysql_service         = "Начало Msql службы"
Const lang_stop_mysql_service          = "Остановите службы MySQL"

Const lang_start_both_services       = "Установить/Run Apache и MySQL услуги" 
Const lang_stop_both_services        = "Стоп/Удалить Apache и MySQL услуги" 

'*** Common Program and Service ===============================================

Const lang_server_utilities          = "Сервер Утилиты" 
Const lang_mysql_console             = "MySQL консоли"
Const lang_server_status             = "Состояние сервера"
Const lang_server_configuration      = "Конфигурация сервера"
Const lang_multi_servers             = "Multi-серверов" 
Const lang_about                     = "About"

Const lang_about_popup_title1       = "About"
lang_about_popup_str1               = _
"Сервер управления использует Windows, HTA и язык сценариев"   & vbCRLF &  _
"VBScript. Эта комбинация позволяет The Uniform Server’s"      & vbCRLF &  _
"управления и меню, чтобы быть легко изменены без"             & vbCRLF &  _
"необходимо для компиляции. Кроме того, различные языки"       & vbCRLF &  _
"легче поддерживается."


Const lang_view_php_info             = "Посмотреть phpInfo"
Const lang_phpmyadmin                = "phpMyAdmin"
Const lang_apache_syntax_check       = "Apache Проверка синтаксиса"         '- Button and message box title
Const lang_server_documentation      = "Сервер Документация" 
Const lang_select_language           = "             Выбор языка" 
Const lang_select_language_spacer    = "--------------------------------------"

Const lang_documentation_popup_title       = "документация"
lang_documentation_popup_str               = _
"Sorry this documentation page"             & vbCRLF &  _
"is unavailable in your language."

'*** Server Status ============================================================

Const lang_server_status_page_title  = "Состояние сервера"
Const lang_ss_general                = "Общее состояние" 
Const lang_general_1a                = "Ваш интернет-IP-адрес"
Const lang_general_2a                = "Доступен в Интернете" 
Const lang_general_3a                = "Статус Cron запустить"
Const lang_general_4a                = "PHP INI: файл php.ini"
Const lang_general_5a                = "Название службы Cron"

Const lang_general_6a                = "Появилась новая версия UniServer"
Const lang_general_6b                = "Недоступные"
Const lang_general_6c                = "текущий"

Const lang_ss_apache_server          = "Сервер Apache"
Const lang_apache_1a                 = "Apache порт"
Const lang_apache_2a                 = "Apache SSL порт" 
Const lang_apache_3a                 = "Apache имя исполняемого файла"
Const lang_apache_4a                 = "Apache имя службы" 
Const lang_apache_5a                 = "Apache SSL сервер" 
Const lang_apache_6a                 = "Apache запустить статус" 
Const lang_apache_7a                 = "Apache установить статус"

Const lang_ss_mysql_server           = "MySQL Server"
Const lang_mysql_1a                  = "MySQL порт"
Const lang_mysql_2a                  = "MySQL имя исполняемого файла"
Const lang_mysql_3a                  = "MySQL имя службы"
Const lang_mysql_4a                  = "MySQL запустить статус"
Const lang_mysql_5a                  = "MySQL установить статус"

Const lang_ss_port_status            = "Статус порта"
Const lang_port_1a                   = "Apache порт" 
Const lang_port_2a                   = "Apache SSL порт" 
Const lang_port_3a                   = "MySQL порт" 

Const lang_ss_get_ip                   = "Получить IP"
Const lang_ss_run_access_check         = "Выполнить проверку"
Const lang_ss_yes                      = "да" 
Const lang_ss_no                       = "не"
Const lang_ss_running                  = "работающий"
Const lang_ss_not_running              = "Не работает"
Const lang_ss_development              = "развитие" 
Const lang_ss_production               = "производство" 
Const lang_ss_enabled                  = "Включено"
Const lang_ss_disabled                 = "инвалид" 
Const lang_ss_free_to_install          = "Бесплатная установка" 
Const lang_ss_installed_as_service     = "Устанавливается как сервис"
Const lang_ss_installed_as_program     = "Устанавливается как программа"
Const lang_ss_is_free_to_use           = "Имеет право использовать"
Const lang_ss_in_use_by_this_server    = "При использовании данного сервера" 
Const lang_ss_in_use_by_another_server = "При использовании другого сервера"

'*** Move Servers Multi-servers ===============================================

Const lang_multi_server_page_title     = "Перемещение серверов на нескольких серверах"
Const lang_multi_old_heading           = "-старый--"
Const lang_multi_new_heading           = "-новый --"
Const lang_multi_reload                = "перезагружать"
Const lang_multi_increment             = "приращение"
Const lang_multi_run                   = "RUN Перемещение серверов" 
Const lang_multi_invalid               = "Неправильный ввод"
Const lang_multi_please_correct        = "Пожалуйста, исправьте"

'##############################################################################
' Server configuration - Main Menu 
'##############################################################################

'******************************************************************************
' General - Server configuration
'******************************************************************************

lang_m1_general          = " общий"
lang_m2_general          = " Изменение портов. Apache и MySQL"
lang_m3_general          = " Очистить файлы журнала сервера"

lang_m4_general_www         = " Корневая WWW - меняйте пароли и доступ"
lang_m5_general_ssl         = " Корневые SSL - меняйте пароли и доступ"
lang_m6_general_phpmyadmin  = " Корневая PhpMyAdmin - Изменение типа доступа"

lang_m20_general_spacer  = "------------------------------------------------------------"

'*** Sub-General Change ports, Apache and MySQL ===============================

lang_port_change_reload         = "перезагружать"
lang_port_change_change         = "изменение"
lang_port_change_change_all     = "Заменить все"
lang_port_change_change_title   = "Порт / с Изменены"
lang_port_change_changed        = "Порт или порты, которые были изменены"

'*** Sub-General Clear Server Log Files ======================================
Const lang_logs_title             = "Очистить журналы сервера"
Const lang_logs_frame             = "Выберите Вход"

Const lang_log_apache_error       = "Apache Error Log"
Const lang_log_apache_access      = "Apache аккаунт Вход"
Const lang_log_ssl_apache_error   = "Apache SSL Error Log"
Const lang_log_ssl_apache_access  = "Apache SSL аккаунт Вход"

Const lang_log_mysql_error        = "MySQL Error Log"
Const lang_log_cron               = "Cron Вход"
Const lang_log_DTDNS              = "DTDNS Вход"
Const lang_log_dbbackup           = "Вход резервных копий баз данных"

Const lang_log_select_all_bt      = "Выбрать все"
Const lang_log_clear_bt           = "Очистить выбранные"

Const lang_log_popup_title1       = "Apache работает"
lang_log_popup_str1               = _
"Apache сервер. Файлы журналов не могут быть очищены."      & vbCRLF  & vbCRLF &  _  
"Пожалуйста, прекратите Apache и повторите попытку."

Const lang_log_popup_title2       = "MySQL работает"
lang_log_popup_str2               = _
"MySQL сервер. Лог-файл не может быть очищен."              & vbCRLF  & vbCRLF &  _  
"Пожалуйста, прекратите MySQL и попробуйте снова."

Const lang_log_popup_title3       = "Очистить Содержимое лог-файлов"
lang_log_popup_str3               = _
"Лог файлы могут достигать очень больших использовать эту"   & vbCRLF &  _ 
"пункт меню, чтобы удалить содержимое"                       & vbCRLF &  _ 
"выбранного файла журнала."                                  & vbCRLF & vbCRLF &  _  
"Выберите файл журнала и нажмите ""Clear Button"""           & vbCRLF & vbCRLF &  _  
"Либо щелкните ""Select all"" кнопка и"                      & vbCRLF &  _ 
"затем нажмите ""Clear Button"""                             & vbCRLF & vbCRLF &  _  
"Примечание 1:"                                              & vbCRLF &  _ 
"Файлы не удаляются только содержимое очищается."            & vbCRLF & vbCRLF &  _  
"Примечание 2:"                                              & vbCRLF &  _ 
"Остановите сервер Apache, чтобы очистить и MySQL"           & vbCRLF &  _ 
"лог-файлов ." 


'*** Sub-General Root www - Change passwords and access ========================
Const lang_passwords_page_title_www          = "Корневая WWW - меняйте пароли и доступ"
Const lang_passwords_www_legend              = "ROOT WWW UniServer папка \ WWW"

Const lang_passwords_name_www                = "Имя:"
Const lang_passwords_password_www            = "Пароль:"
Const lang_passwords_edit_www_bt             = "редактировать"
Const lang_passwords_change_password_www_bt  = "Изменить имя пароль"
Const lang_passwords_reload_www              = "Перезагрузить значения из файла"

Const lang_www_htaccess1_title               = "Пустые имя или пароль"
Const lang_www_htaccess1_str                 = "И имя и пароль, необходимые"

Const lang_www_htaccess2_title               = "Имя и пароль"
Const lang_www_htaccess2_str                 = "обновленный"

Const lang_passwords_state_www_legend        = "Изменить штат WWW "

Const lang_www_password                      = "Пароль:"
Const lang_www_password_disabled             = "Пароль инвалидов"
Const lang_www_password_enabled              = "Пароль Включено"
Const lang_www_access                        = "Доступ:"
Const lang_www_access_local                  = "Локальный доступ"
Const lang_www_access_local_intranet         = "Местные и Интранет доступа"
Const lang_www_access_internet               = "Местные, Интранет и Интернет"

Const lang_passwords_test_www_bt             = "тест"

Const lang_www_passwords_help_title          = "Установите веб-доступа. По желанию Защита паролем"
lang_www_passwords_help_str                  = _
"Обзор:"                                                                               & vbCRLF & _
"На этой странице можно разместить сервер в режиме онлайн или ограничить доступ"       & vbCRLF & _
"для локального хоста (по умолчанию) или на локальный и Интранет. "                    & vbCRLF & _
"По желанию, вы можете задать имя и пароль для доступа к папке WWW"                    & vbCRLF & vbCRLF & _
"1] кнопка""Edit"" позволяет напрямую редактировать файл конфигурации."                & vbCRLF & vbCRLF & _
"2] После ввода имени и пароля, нажмите ""Change name"""                               & vbCRLF & _
"   ""пароль "" кнопку. Это обновление соответствующий файл пароля."                   & vbCRLF & vbCRLF & _
"3] Включение и отключение защиты паролем:"                                            & vbCRLF & _
"   С помощью переключателей для включения или отключения аутентификации."             & vbCRLF & _
"   Пароль инвалидов: Аутентификация не требуется."                                    & vbCRLF & _
"   Пароль Enabled: имя и пароль, необходимые для доступа к серверу."                  & vbCRLF & vbCRLF & _
"4] Местные или местных и Интранет или он-лайн доступа:"                               & vbCRLF & _
"   С помощью переключателей, чтобы выбрать нужный режим доступа"                      & vbCRLF & _
"   Локальный доступ: Ограничивает доступ к серверу только локальным пользователем. "  & vbCRLF & _
"   Местные и Интранет доступа: Разрешить пользователям на доступ Интранет"            & vbCRLF & _
"   Местные, Интранет и Интернет: Переводит сервера On-Line "         

'*** Sub-General Root ssl - Change passwords and access ========================
Const lang_passwords_page_title_ssl          = "Корневые SSL - меняйте пароли и доступ"
Const lang_passwords_ssl_legend              = "ROOT SSL UniServer папка \ SSL "

Const lang_passwords_name_ssl                = "Имя:"
Const lang_passwords_password_ssl            = "Пароль:"
Const lang_passwords_edit_ssl_bt             = "редактировать"
Const lang_passwords_change_password_ssl_bt  = "Изменить имя пароль"
Const lang_passwords_reload_ssl              = "Перезагрузить значения из файла"

Const lang_ssl_htaccess1_title               = "Пустые имя или пароль"
Const lang_ssl_htaccess1_str                 = "И имя и пароль, необходимые"

Const lang_ssl_htaccess2_title               = "Имя и пароль"
Const lang_ssl_htaccess2_str                 = "обновленный"

Const lang_passwords_state_ssl_legend    = "Изменить штат SSL "

Const lang_ssl_password                      = "Пароль:"
Const lang_ssl_password_disabled             = "Пароль инвалидов"
Const lang_ssl_password_enabled              = "Пароль Включено"
Const lang_ssl_access                        = "Доступ:"
Const lang_ssl_access_local                  = "Локальный доступ"
Const lang_ssl_access_local_intranet         = "Местные и Интранет доступа"
Const lang_ssl_access_internet               = "Местные, Интранет и Интернет"

Const lang_passwords_test_ssl_bt             = "тест"

Const lang_ssl_passwords_help_title          = "Установить SSL доступа. По желанию Защита паролем"
lang_ssl_passwords_help_str                  = _
"Обзор:"                                                                               & vbCRLF & _
"На этой странице можно разместить сервер в режиме онлайн или ограничить доступ"       & vbCRLF & _
"для локального хоста (по умолчанию) или на локальный и Интранет. "                    & vbCRLF & _
"По желанию, вы можете задать имя и пароль для доступа к папке SSL"                    & vbCRLF & vbCRLF & _
"1] кнопка""Edit"" позволяет напрямую редактировать файл конфигурации."                & vbCRLF & vbCRLF & _
"2] После ввода имени и пароля, нажмите ""Change name"""                               & vbCRLF & _
"   ""пароль "" кнопку. Это обновление соответствующий файл пароля."                   & vbCRLF & vbCRLF & _
"3] Включение и отключение защиты паролем:"                                            & vbCRLF & _
"   С помощью переключателей для включения или отключения аутентификации."             & vbCRLF & _
"   Пароль инвалидов: Аутентификация не требуется."                                    & vbCRLF & _
"   Пароль Enabled: имя и пароль, необходимые для доступа к серверу."                  & vbCRLF & vbCRLF & _
"4] Местные или местных и Интранет или он-лайн доступа:"                               & vbCRLF & _
"   С помощью переключателей, чтобы выбрать нужный режим доступа"                      & vbCRLF & _
"   Локальный доступ: Ограничивает доступ к серверу только локальным пользователем. "  & vbCRLF & _
"   Местные и Интранет доступа: Разрешить пользователям на доступ Интранет"            & vbCRLF & _
"   Местные, Интранет и Интернет: Переводит сервера On-Line "         


'*** Sub-General Root phpmyadmin - Change passwords and access ========================
Const lang_passwords_page_title_phpmyadmin          = "PhpMyAdmin - Изменить права доступа"
Const lang_passwords_phpmyadmin_legend              = "PhpMyAdmin доступа"

Const lang_phpmyadmin_access_local                  = "местный"
Const lang_phpmyadmin_access_local_intranet         = "Интранет + пароли"
Const lang_phpmyadmin_access_internet               = "Интернет + пароль + SSL"

Const lang_passwords_phpmyadmin_legend2             = "Вариант Edit Config файлы"
Const lang_passwords_edit1_phpmyadmin_bt            = "Просмотреть или отредактировать .htaccess"
Const lang_passwords_edit2_phpmyadmin_bt            = "Просмотреть или отредактировать config.inc.php"
Const lang_passwords_test_phpmyadmin_bt             = "Тест - Посмотреть в браузере"

Const lang_phpmyadmin_passwords_title1              = "SSL не включен"
lang_phpmyadmin_passwords_str1                      = _
"Этот параметр недоступен!"                                                             & vbCRLF & vbCRLF & _
"Разрешение доступа в Интернет для PhpMyAdmin требует SSL должна быть включена."        & vbCRLF & _
"SSL обеспечивает шифрование всех операций через Интернет."                             & vbCRLF & vbCRLF & _
"Никаких действий не было выполнено, кроме как вернуться в прежнее состояние доступа."  & vbCRLF & _
"Повторите этот пункт меню, после включения SSL."                                       & vbCRLF & vbCRLF & _
"Примечание:"                                                                           & vbCRLF & _
"SSL включается автоматически при создании сертификата сервера."



Const lang_phpmyadmin_passwords_help_title          = "Установить PhpMyAdmin доступ."
lang_phpmyadmin_passwords_help_str                  = _
"Обзор:"                                                                                     & vbCRLF & _
"Это меню позволяет изменять PhpMyAdmin доступ и просматривать или редактировать вручную"    & vbCRLF & _
"связанных конфигурационных файлов."                                                         & vbCRLF & vbCRLF & _
"1] местный"                                                                                 & vbCRLF & _
"Локальный доступ по умолчанию. Это ограничивает PhpMyAdmin доступ к локальному"             & vbCRLF & _
"означает, что он доступен только с ПК он работает. В дополнение к"                          & vbCRLF & _
"доступ к серверу MySQL, пароль не требуется, то она автоматически использует корень."       & vbCRLF & vbCRLF & _
"2] Интранет + пароли"                                                                       & vbCRLF & _
"Эта опция позволяет пользователям Интранет доступа к серверу MySQL, чтобы получить доступ"  & vbCRLF & _
"все пользователи должны ввести имя и пароль. "                                              & vbCRLF & vbCRLF & _
"3] Интернет + пароль + SSL"                                                                 & vbCRLF & _
"Эта опция позволяет пользователям Интернета доступ к серверу MySQL, чтобы получить доступ"  & vbCRLF & _
"все пользователи должны ввести имя и пароль. Все операции происходят"                       & vbCRLF & _
"более безопасное зашифрованное соединение."                                                 & vbCRLF & _
"Примечание: эта опция отключена, пока сертификат сервера был сгенерирован."

'******************************************************************************
' Apache - Server configuration
'******************************************************************************

lang_m1_apache   = " Apache"
lang_m2_apache   = " Изменить Базовая конфигурация"
lang_m3_apache   = " Изменить httpd.conf"
lang_m4_apache   = " Изменить httpd-ssl.conf"
lang_m5_apache   = " Просмотр журнала ошибок файл error.log"
lang_m6_apache   = " Посмотреть доступа лог-файл access.log"
lang_m7_apache   = " Посмотреть Ошибка SSL лог-файл error.log"
lang_m8_apache   = " Посмотреть SSL Доступ лог-файл access.log"
lang_m9_apache   = " Генерация сертификата"
lang_m10_apache  = " Apache виртуальных доменов"
lang_m12_apache  = " Apache сервер-статус"
lang_m13_apache  = " Apache сервер-инфо"
lang_m14_apache  = " Apache Модули Включить/Выключить"
lang_m20_apache_spacer  = "------------------------------------------------------"

'*** Sub-Apache Edit Basic Configuration ======================================

Const lang_ab_page_title              = "Основные Настройка Apache"
Const lang_ab_legend                  = "Обычно измененные параметры"
Const lang_ab_server_name             = "имя сервера" 
Const lang_ab_admin_email             = "Email Server Admin" 
Const lang_ab_directory_indexs        = "Файлы Каталог Индекс" 
Const lang_ab_server_side_includes    = "Server Side Includes" 
Const lang_ab_server_signature        = "Сервер Подпись" 
Const lang_ab_listen                  = "Слушайте порт" 
Const lang_ab_update_configuration_bt = "Обновление конфигурации" 
Const lang_ab_help_bt                 = "помощь" 

Const lang_ab_help_title              = "Основные Настройка Apache"
lang_ab_help_str                      = _
"Эта форма позволяет изменять обычно настроен"                       & vbCRLF & _
"Apache вариантов."                                                  & vbCRLF & vbCRLF & _
"Чтобы изменить всю конфигурацию Apache, выберите редактировать"     & vbCRLF & _
"httpd.conf Apache из выпадающего меню."  

'*** Sub-Apache Generate Certificate ==========================================

Const lang_openssl_page_title          = "Certificate Server и ключ генератор"
Const lang_openssl_cn                  = "Имя или Ваше полное имя"
Const lang_openssl_o                   = "Организация/компания" 
Const lang_openssl_ou                  = "отдел"
Const lang_openssl_e                   = "Email"
Const lang_openssl_l                   = "Город/Местное"
Const lang_openssl_st                  = "состояние"
Const lang_openssl_c                   = "страна"
Const lang_openssl_rsa_bits            = "RSA бит"
Const lang_openssl_bt_reload           = "Перезагрузить умолчанию"
Const lang_openssl_bt_generate         = "Выполнить Generate"

lang_openssl_cn_help_title             = "Помощь - Общие CN имя"
lang_openssl_cn_help =  _
"(CN) Общее имя, как правило, веб-сервер хоста или ваше имя."             & vbCRLF &  _
" Для обеспечения https://www.fred.com, ваш общее название www.fred.com"  & vbCRLF &  _ 
" или *. fred.com для групповой сертификат."

lang_openssl_o_help_title              = "Помощь - Организация O"
lang_openssl_o_help =  "(O) Организация например, Мой корпорации"

lang_openssl_ou_help_title             = "Помощь - организация группы OU"
lang_openssl_ou_help =  "(OU) Ваше подразделение или отдел. Например, PHP отдел"

lang_openssl_email_help_title          = "Помощь - Email E"
lang_openssl_email_help =  _
"(E)Как правило, указанные для электронной почты сертификат пользователя"    & vbCRLF &  _
" для Activesync или SMIM."

lang_openssl_l_help_title             = "Помощь - Город / Местный L"
lang_openssl_l_help =  "(L) Город / Местный Например, Лондон."

lang_openssl_st_help_title            = "Помощь - Государственный ST"
lang_openssl_st_help =  "(ST) Например, Кембриджшир."

lang_openssl_c_help_title             = "Помощь - Страна C"
lang_openssl_c_help = _
"(C) Код страны два символа алфавита."    & vbCRLF &  _
"К примеру 'Великобритания' дает 'UK' "

lang_openssl_rsa_help_title           = "Помощь - RSA длиной бит"
lang_openssl_rsa_help = _
"Сертификационные органы больше не выдачи"                              & vbCRLF &  _
"сертификаты, которые являются менее чем 2048 длин битным ключом."      & vbCRLF &  _
"Рекомендуется для этого параметра должно быть по умолчанию 2048 бит." 

lang_openssl_ca_detected_title             = "CA Найдено"
lang_openssl_ca_detected = _
"Похоже, что вы используете свой собственный CA."                           & vbCRLF & vbCRLF & _
"Чтобы избежать перезаписи текущего сертификата сервера и ключевых"         & vbCRLF &  _
"Этот сценарий имеет прекращено."                                           & vbCRLF & vbCRLF & _
"Для создания нового сертификата сервера и ключа, используйте сценарий CA." 

lang_openssl_cert_detected_title             = "Сертификат сервера Найдено"
lang_openssl_cert_detected = _
"Сертификат сервера был найден."                                                & vbCRLF & vbCRLF & _
"Хотели бы Вы, чтобы перезаписать существующий сертификат сервера и ключевых"   & vbCRLF & vbCRLF & _
"                                          Переписать?"

lang_openssl_generated_title             = "Сертификат сервера Сгенерировано"
lang_openssl_generated = _
"Сертификат сервера и ключ, сгенерированный."             & vbCRLF & vbCRLF & _
"Они были установлены и"                                  & vbCRLF &  _
"SSL был включен в конфигурационный файл Apache."         & vbCRLF & vbCRLF & _
"Перезагрузите сервер, чтобы изменения вступили место."   & vbCRLF

'*** Sub-Apache APACHE VHOSTS =================================================

Const lang_av_apache_virtual_hosts_title  = "Apache Виртуальные хосты"
Const lang_av_virtual_host_setup_frame    = "Виртуальный хост установки"
Const lang_av_list_of_hosts_frame         = "Список хостов"

Const lang_av_port_td                     = "порт"
Const lang_av_server_admin_td             = "Server Admin"
Const lang_av_document_root_td            = "Document Root"
Const lang_av_server_name_td              = "Имя сервера"
Const lang_av_server_alias_td             = "Server Alias"
Const lang_av_error_log_td                = "Error Log"
Const lang_av_custom_log_td               = "Пользовательские Вход"
Const lang_av_additions_td                = "Дополнительные директивы"
Const lang_av_vhost_help_td               = "Помощь Vhost"

Const lang_av_delete_bt                   = "Удалить"
Const lang_av_update_vhost_bt             = "Обновление Vhost"
Const lang_av_create_vhost_bt             = "Создать Vhost"
Const lang_av_cancel_bt                   = "отменить"

Const lang_av_select_folder_bt            = "Выбор папки"
Const lang_av_confirm_name_bt             = "подтверждать"

Const lang_av_delete_vhost_bt             = "Удалить Vhost"
Const lang_av_view_in_browser_bt          = "Посмотреть в браузере"
Const lang_av_cancel2_bt                  = "отменить"

'--Port
Const lang_av_popup_title1                = "виртуальный хост порт"
lang_av_popup_str1                        = _
"Порт по умолчанию использует Vhost главный сервер порт прослушивания."  & vbCRLF &  _   
"Как правило, это имеет стандартный порт 80. "                           & vbCRLF &  _   
"Запуск нескольких серверов обновления меню этого порта."                & vbCRLF & vbCRLF &  _ 
"Вы можете изменить значение порта. Она становится фиксированным и"      & vbCRLF &  _   
"не обновляется, когда несколькими серверами меню запуска."

'--Server Admin
Const lang_av_popup_title2                = "Server Admin"
lang_av_popup_str2                        = _
"Адрес электронной почты для администрации сайта."                              & vbCRLF &  _  
"Это происходит от имени сервера по умолчанию."                                 & vbCRLF & vbCRLF &  _ 
"Вы можете использовать любой электронной почты, который вы предпочитаете."     & vbCRLF & vbCRLF &  _ 
"Кроме удалить, нажав кнопку удаления."

'--Document Root
Const lang_av_popup_title3                = "Document Root"
lang_av_popup_str3                        = _
"Документ корень полный путь к папке. апач"                          & vbCRLF &  _ 
"будет служить хост сайт из этой папки."                             & vbCRLF & vbCRLF &  _ 
"1) Для переносимости использовать пути по умолчанию отображаются;"  & vbCRLF &  _ 
"   заменить *** с папку, которую необходимо использовать."          & vbCRLF & vbCRLF &  _ 
"2) Также можно использовать""Select Folder"" кнопки."               & vbCRLF &  _ 
"   В появившемся найдите и выберите нужную папку."                  & vbCRLF &  _ 
"   Нажмите кнопку ОК, чтобы их принять."                            & vbCRLF & vbCRLF &  _ 
"Примечание:"                                                        & vbCRLF &  _ 
"Скрипт заменит обратная косая черта с"                              & vbCRLF &  _ 
" слэша. Если папка не существует, он"                               & vbCRLF &  _ 
" будет создан."

'--Document Root Browse Folder Dialog
Const lang_av_folder_dialog_str1          = "Выберите папку для корневой папке Vhost."
Const lang_av_folder_dialog_str2          = "Кроме создать новую папку для использования." 

'--Server Name - Host Name
Const lang_av_popup_title4                = "Имя сервера - имя хоста"
lang_av_popup_str4                        = _
"Имя хоста адрес, который вы вводите в"                              & vbCRLF &  _             
"браузер, исключая http:// часть."                                   & vbCRLF & vbCRLF &  _ 
"Пример 1:"                                                          & vbCRLF &  _ 
"Полный адрес в Интернете: http://www.me.com"                        & vbCRLF &  _ 
"Имя хоста: www.me.com"                                              & vbCRLF & vbCRLF &  _ 
"Пример 2:"                                                          & vbCRLF &  _ 
"Полный адрес в Интернете: http://uniserver.com"                     & vbCRLF &  _ 
"Имя хоста: uniserver.com"                                           & vbCRLF & vbCRLF &  _ 
"После ввода Имя компьютера нажмите ""Confirm"" кнопки."             & vbCRLF &  _ 
"Это позволяет меню и отображает значения по умолчанию."             & vbCRLF &  _ 
"Изменить или удалить значения по умолчанию в случае необходимости."

'---Server Alias
Const lang_av_popup_title5                = "Server Alias"
lang_av_popup_str5                        = _
"Сервер псевдоним позволяет серверу быть доступна более"                      & vbCRLF &  _ 
"чем одно имя. "                                                              & vbCRLF & vbCRLF &  _ 
"Вы должны иметь сервер DNS правильно настроена на карте"                     & vbCRLF &  _ 
"эти имена в IP-адреса, связанного с вашим сервером."                         & vbCRLF & vbCRLF &  _ 
"По умолчанию предлагается являются производными от вашего ""Host Name""."    & vbCRLF &  _ 
"Изменить или удалить значения по умолчанию в случае необходимости."

'---Error Log
Const lang_av_popup_title6                = "Error Log"
lang_av_popup_str6                        = _
"Директивой ErrorLog задает имя файла, в котором"       & vbCRLF &  _ 
"сервер регистрирует любые ошибки он сталкивается. Если дорожка файла"       & vbCRLF &  _ 
"не является абсолютным, то он считается по отношению к"                     & vbCRLF &  _ 
"the ServerRoot."                                                            & vbCRLF & vbCRLF &  _ 
"По умолчанию предлагается происходит от вашего ""Server Name""."            & vbCRLF &  _ 
"Изменить или удалить по умолчанию, как это необходимо."                     & vbCRLF & vbCRLF &  _ 
"Примечание: Для минимизации файловые ресурсы удалить эту опцию. Ошибки"     & vbCRLF &  _ 
"будут записываться в основной файл-сервер.  "

'---Custom Log
Const lang_av_popup_title7                = "Пользовательские Вход"
lang_av_popup_str7                        = _
"Директива CustomLog задает имя файла, в котором"      & vbCRLF &  _ 
"сервер будет регистрировать доступ к информации. Если дорожка файла"      & vbCRLF &  _ 
"не является абсолютным, то он считается по отношению к"                   & vbCRLF &  _ 
"the ServerRoot."                                                          & vbCRLF & vbCRLF &  _ 
"По умолчанию предлагается происходит от вашего ""Server Name"""           & vbCRLF &  _ 
"Изменить или удалить по умолчанию, как это необходимо."                   & vbCRLF & vbCRLF &  _ 
"Примечание: Для минимизации файловые ресурсы удалить эту опцию. Доступ"   & vbCRLF &  _ 
"будут записываться в основной доступ к файлам сервера.  "

'--Additional Directives
Const lang_av_popup_title8                = "Дополнительные директивы Apache"
lang_av_popup_str8                        = _
"Дополнительные директивы Apache"                                    & vbCRLF &  _
"Каждый Vhost наследует параметры из главного"                       & vbCRLF &  _
"конфигурации сервера."                                              & vbCRLF & vbCRLF &  _  
"Размещение этих директив в Vhost будет"                             & vbCRLF &  _
"переопределить основные настройки серверов, позволяющих каждому"    & vbCRLF &  _
"Vhost быть самостоятельно с учетом."                                & vbCRLF & vbCRLF &  _ 
"Пример 1: Вам может потребоваться код между пунктирными линиями:"   & vbCRLF & vbCRLF &  _ 
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

Const lang_av_popup_title9      = "Документ Корневой каталог ошибку"
Const lang_av_popup_str9        = "Пожалуйста, eneter или выберите папку корня документа"

Const lang_av_popup_title10     = "Ошибка Имя сервера"
Const lang_av_popup_str10       = "Пожалуйста, eneter имя сервера"

Const lang_av_popup_title11     = "Ошибка Имя сервера"
Const lang_av_popup_str11       = "Имя сервера уже существует в файле конфигурации!"

Const lang_av_popup_title12     = "Удаление корневой папке"
Const lang_av_popup_str12       = "Вы хотите удалить корневой папке?"

Const lang_av_popup_title13     = "Vhost конфигурации обновленных"
Const lang_av_popup_str13       = "Для изменения вступили в силу перезагрузите сервер Apache"

'******************************************************************************
' MySQL - Server configuration
'******************************************************************************

lang_m1_mysql  = " MySQL"
lang_m2_mysql  = " Изменение пароля"
lang_m3_mysql  = " Восстановление пароля"

lang_m4_mysql  = " Изменить my.ini"
lang_m5_mysql  = " Просмотр журнала ошибок файл mysql.err"

lang_m6_mysql  = " Создать удалить базу данных"
lang_m7_mysql  = " Создание ограниченного пользователя MySQL"
lang_m8_mysql  = " Eдит Ограниченные пользователей MySQL"
lang_m9_mysql  = " InnoDB Включить / Выключить"

lang_m20_mysql_spacer  = "--------------------------------------------------------"

'*** Sub-MySQL Change Password ================================================

Const lang_new_mysql_password_title    = "Установить новые Пароль MySQL"
Const lang_new_pass_mysql_legend       = "Установить новый MySQL Состояние пароля" 
Const lang_new_pass_starting_1         = "Starting MySQL server"
Const lang_new_setting_new_password    = "Настройка нового пароля"
Const lang_new_popup_title             = "MySQL пароль пользователя root"
Const lang_new_popup_str               = "MySQL корневой пароль был изменен"

Const lang_new_enter_pass_mysql_legend = "Введите новый пароль"
Const lang_new_change_mysql_password   = "Сменить пароль"
Const lang_new_error_title             = "ошибка"
Const lang_new_error_str               = "Пожалуйста, введите пароль"

'*** Sub-MySQL Restore Password ===============================================

Const lang_restore_mysql_password_title  = "Восстановление пароля MySQL"
Const lang_restore_mysql_legend          = "Восстановление пароля MySQL" 
Const lang_restore_stopping_kill         = "Остановка или убийство сервере"
Const lang_restore_start_nogrant         = "Перезагрузите MySQL сервер без каких-либо грантов"
Const lang_restore_root                  = "Восстановление пароля к корневой"
Const lang_restore_kill_no_grant         = "Убийство ни один грант не MySQL сервер"
Const lang_restore_initial               = "Восстановление начального сервера MySQL состоянии"

Const lang_restore_run_legend            = "Восстановление пароля"
Const lang_restore_run_button            = "Выполнить восстановление"

Const lang_restore_popup_title           = "Пароль MySQL"
Const lang_restore_popup_str             = "MySQL пароль был восстановлен"


'*** Sub-MySQL Create delete Database =========================================

Const lang_create_delete_mysql_db_title   = "Создать Удалить базы данных MySQL"
Const lang_create_database_mysql_legend   = "Создание базы данных" 
Const lang_clear_both_mysql_legend        = "Очистить Оба" 
Const lang_delete_database_mysql_legend   = "Удаление базы данных" 

Const lang_enter_name_to_create_mysql     = "Введите имя базы данных для создания" 
Const lang_select_name_to_delete_mysql    = "Выбор базы данных для удаления" 

Const lang_create_database_mysql_bt       = "Создание базы данных" 
Const lang_clear_both_mysql_bt            = "Очистить Оба" 
Const lang_delete_database_mysql_bt       = "Удаление базы данных" 

Const lang_create_mysql_popup_title1      = "ошибка"
Const lang_create_mysql_popup_str1        = "Пожалуйста, введите имя базы данных"

Const lang_create_mysql_popup_title2      = "ошибка"
Const lang_create_mysql_popup_str2        = "База данных уже создан!"

Const lang_create_mysql_popup_title3      = "ошибка"
Const lang_create_mysql_popup_str3        = "База данных не выбрана"

Const lang_create_mysql_popup_title4      = "MySQL не запущена"
Const lang_create_mysql_popup_str4        = "Чтобы использовать этот пункт меню пожалуйста, запустить сервер MySQL"

'*** Sub-MySQL Create Restricted MySQL User ===================================

Const lang_create_restricted_mysql_user_title   = "Создание ограниченного пользователя MySQL"
Const lang_cr_mysql_create_legend               = "Создайте пользователя ограничено"
Const lang_cr_mysql_privileges_legend           = "Привилегии"
Const lang_cr_mysql_option_select_db            = "Вариант выбора базы данных"
Const lang_cr_mysql_user_name                   = "имя пользователя"
Const lang_cr_mysql_user_password               = "пароль"
Const lang_cr_mysql_database_name               = "база данных"

Const lang_cr_mysql_select                      = "выбирать"
Const lang_cr_mysql_insert                      = "вставить"
Const lang_cr_mysql_update                      = "обновление"
Const lang_cr_mysql_delete                      = "удалять"
Const lang_cr_mysql_create                      = "создавать"
Const lang_cr_mysql_drop                        = "падение"
Const lang_cr_mysql_alter                       = "изменять"
Const lang_cr_mysql_index                       = "индекс"

Const lang_cr_mysql_cancel_bt                   = "отменить"
Const lang_cr_mysql_create_bt                   = "Создать пользователя"
Const lang_cr_mysql_help_bt                     = "помощь"

Const lang_cr_mysql_popup_title1                = "Имя Пустые"
Const lang_cr_mysql_popup_str1                  = "Пожалуйста, введите имя пользователя"

Const lang_cr_mysql_popup_title2                = "Пароль Пустые"
Const lang_cr_mysql_popup_str2                  = "Пожалуйста, введите пароль пользователя"

Const lang_cr_mysql_popup_title3                = "Имя базы данных Пустые"
Const lang_cr_mysql_popup_str3                  = "Пожалуйста, введите или выберите имя базы данных"

Const lang_cr_mysql_popup_title4                = "созданный"
Const lang_cr_mysql_popup_str4                  = "Ограниченные MySQL User Created"

Const lang_cr_mysql_popup_help_title            = "Ограничение пользователей MySQL - Помощь"
lang_cr_mysql_popup_help_str                    = _
"Этот пункт меню создает пользователя MySQL с ограниченными правами."   & vbCRLF & vbCRLF & _  
"Введите имя пользователя и пароль."                                    & vbCRLF & _                 
"Выберите необходимые привилегии пользователя."                         & vbCRLF & vbCRLF & _        
"Этот пользователь ограничен в использовании единой базы данных."       & vbCRLF & _    
"Введите имя базы данных или выберите его из списка опций."             & vbCRLF & _      
"Если база данных не выходит он будет созда"             

'*** Sub-MySQL Edit Restricted MySQL User =====================================

Const lang_edit_restricted_mysql_user_title     = "Изменить Ограниченные пользователя MySQL"
Const lang_er_mysql_edit_legend                 = "Изменить ограничено Пользователь"
Const lang_er_mysql_privileges_legend           = "Привилегии"
Const lang_er_mysql_select_user                 = "Выберите пользователя"
Const lang_er_mysql_user_name                   = "имя пользователя"
Const lang_er_mysql_user_password               = "пароль"
Const lang_er_mysql_database_name               = "база данных"

Const lang_er_mysql_select                      = "выбирать"
Const lang_er_mysql_insert                      = "вставить"
Const lang_er_mysql_update                      = "обновление"
Const lang_er_mysql_delete                      = "удалять"
Const lang_er_mysql_create                      = "создавать"
Const lang_er_mysql_drop                        = "падение"
Const lang_er_mysql_alter                       = "изменять"
Const lang_er_mysql_index                       = "индекс"

Const lang_er_mysql_cancel_bt                   = "отменить"
Const lang_er_mysql_update_bt                   = "Обновление Пользователь"
Const lang_er_mysql_help_bt                     = "помощь"
Const lang_er_mysql_delete_bt                   = "удалять"

Const lang_er_mysql_popup_title1                = "Имя Пустые"
Const lang_er_mysql_popup_str1                  = "Пожалуйста, введите имя пользователя"

Const lang_er_mysql_popup_title2                = "Пароль Пустые"
Const lang_er_mysql_popup_str2                  = "Пожалуйста, введите пароль пользователя"

Const lang_er_mysql_popup_title3                = "Имя базы данных Пустые"
Const lang_er_mysql_popup_str3                  = "Пожалуйста, введите или выберите имя базы данных"

Const lang_er_mysql_popup_title4                = "созданный"
Const lang_er_mysql_popup_str4                  = "Ограниченные MySQL User Created"

Const lang_er_mysql_popup_title5                = "обновленный"
Const lang_er_mysql_popup_str5                  = "Ограничение пользователей MySQL Обновлено"

Const lang_er_mysql_popup_help_title            = "Изменить Ограниченные пользователей MySQL - Помощь"
lang_er_mysql_popup_help_str                    = _
"Из этого пункта меню можно либо удалить"                                        & vbCRLF & _ 
"или обновить ограничен пользователь MySQL."                                     & vbCRLF & vbCRLF & _  
"Удаление:"                                                                      & vbCRLF & _                                                        
"Выберите пользователя из списка и нажмите кнопку удаления "                     & vbCRLF & vbCRLF & _             
"Обновление:  "                                                                  & vbCRLF & _ 
"Выберите пользователя из списка. Изменение параметров по мере необходимости. "  & vbCRLF & _ 
"Нажмите кнопку Обновить пользователя."

'*** Sub-MySQL InnoDB Enable/Disable ==========================================
Const lang_innodb_mysql_str1                  = "Включить InnoDB"

'******************************************************************************
' PHP - Server configuration
'******************************************************************************

lang_m1_php  = " PHP"
lang_m2_php  = " Изменить Базовая конфигурация"
lang_m3_php  = " Изменить параметры файла конфигурации: php.ini"
lang_m4_php  = " Изменить Производство Файл конфигурации: php_production.ini"
lang_m5_php  = " Изменить развития Файл конфигурации: php_development.ini"
lang_m6_php  = " Редактирование командной строки файла конфигурации: PHP-cli.ini"
lang_m7_php  = " Переключить на развитие файл конфигурации"
lang_m8_php  = " Переключить на производство файл конфигурации"
lang_m9_php  = " phpinfo () - Дисплей Сведения о PHP"
lang_m10_php = " PHP ускорителей APC и Eaccelerator и ZOP"
lang_m11_php = " Груша панель управления"
lang_m12_php = " Расширения PHP Включить/Выключить"

lang_m20_php_spacer  = "---------------------------------------------------------------------------------"

'*** Sub-PHP Edit Basic Configuration =========================================

Const lang_php_page_title                          = "Основные конфигурации PHP"
Const lang_php_current_frame                       = "текущий"
Const lang_php_development_frame                   = "развитие"
Const lang_php_production_frame                    = "производство"

Const lang_php_safe_mode_label                     = "безопасный режим"
Const lang_php_Show_PHP_in_server_signature_label  = "Показать PHP В Server Подпись"
Const lang_php_register_globals_label              = "Register Globals"
Const lang_php_maximum_script_execute_time_label   = "Максимальный сценарий Выполнить время (s.)"
Const lang_php_maximum_memory_amount_label         = "Максимальный объем памяти (MB)"
Const lang_php_display_errors_label                = "Показать ошибки"
Const lang_php_maximum_post_size_label             = "Максимальный размер сообщения"
Const lang_php_maximum_upload_size_label           = "Максимальный размер загружаемого"
Const lang_php_short_open_tags_label               = "Короткие Открытые тэги"
Const lang_php_display_startup_errors_label        = "Показать запуске ошибки"
Const lang_php_track_errors_label                  = "Трек ошибки"
Const lang_php_html_errors_label                   = "Html ошибки"
Const lang_php_variables_order_label               = "Переменные порядке"

Const lang_php_help_bt                             = "помощь"
Const lang_php_update_bt                           = "обновление"

'-- Current updated
Const lang_php_current_config_title              = "PHP Текущее обновление"
lang_php_current_config_str                      = _
"Текущей конфигурации PHP файл был обновлен"                  & vbCRLF & vbCRLF & _
"Для изменения вступили в силу перезагрузите сервер Apache"

'-- Development updated
Const lang_php_develpopment_config_title         = "PHP Development Обновлено"
lang_php_develpopment_config_str                 = _
"Конфигурация развития PHP файл был обновлен"                       & vbCRLF & vbCRLF & _
"Для изменения вступили в силу:  "                                  & vbCRLF & vbCRLF & _
" 1] Переключить на развитие заменяет текущий файл конфигурации."   & vbCRLF & _
" 2] Перезапустите Apache сервер "

'-- Production updated
Const lang_php_production_config_title           = "PHP Производство Обновлено"
lang_php_production_config_str                   = _
"Конфигурация производства PHP файл был обновлен"                             & vbCRLF & vbCRLF & _
"Для изменения вступили в силу:"                                              & vbCRLF & vbCRLF & _
" 1] Переключить на производство в этом заменяет текущий файл конфигурации."  & vbCRLF & _
" 2] Перезапустите Apache сервер" 

'-- Main help
Const lang_php_config_main_help_title              = "Конфигурация PHP"
lang_php_config_main_help_str                      = _
"Эта форма позволяет изменять обычно настроен PHP варианты"                     & vbCRLF & vbCRLF & _ 
"Текущий ини PHP файлов:"                                                       & vbCRLF & _ 
"  Переход на разработки или производства перезаписывает этот файл"             & vbCRLF & vbCRLF & _ 
"PHP развития INI файл."                                                        & vbCRLF & _ 
"  Позволяет ошибки для записи на экране. Вы можете разрешить другим"           & vbCRLF & _ 
"  параметры для тестирования."                                                 & vbCRLF & vbCRLF & _ 
"PHP производства INI-файл."                                                    & vbCRLF & _ 
"  Предотвращает ошибки пишется на экран. Настройки ужесточить безопасности."   & vbCRLF & _ 
"  Например, глобальные по умолчанию отключены."  

'*** Sub-PHP Switch to Development/Production Configuration file ==============

Const lang_php_switching_title         = "Файл конфигурации PHP" 
Const lang_php_switched_to_production  = "Файл конфигурации был изменен на производство" 
Const lang_php_switched_to_development = "Файл конфигурации был изменен на Develpopment"

'*** Sub-PHP PHP Accelerators eAccelerator and APC and ZOP =====
Const lang_accel_eaccelerator_legend   = "eAccelerator"
Const lang_accel_eaccelerator_bti      = "eAccelerator панель управления"
Const lang_accel_eaccelerator_txt1     = "Включить eAccelerator"


Const lang_accel_apc_legend            = "APC"
Const lang_accel_apc_bti               = "APC панель управления"
Const lang_accel_apc_txt1              = "Включить APC"

Const lang_accel_zop_legend            = "Zend OpCache"
Const lang_accel_zop_bti               = "Zend OpCache Панель управления"
Const lang_accel_zop_txt1              = "Включить Zend OpCache"

Const lang_accel_title                 = "Конфигурация PHP"
lang_accel_str                         = _
"PHP файлы конфигурации были обновлены."                  & vbCRLF & vbCRLF & _
"Перезагрузите сервер, чтобы изменения вступили место." 

'*** Sub-PHP Pear Control ==============

Const lang_pear_leg             = "Груша управления"
Const lang_pear_install_bt      = "Установить Груша"
Const lang_pear_frontend_bt     = "Посмотреть Груша Фронтальный"


'******************************************************************************
' MSMPT - Server configuration
'******************************************************************************

lang_m1_msmpt = " MSMPT"
lang_m2_msmpt = " Изменить MSMPT Конфигурация"
lang_m3_msmpt = " умолчанию"
lang_m4_msmpt = " Просмотр журнала"
lang_m5_msmpt = " Отправить Test E-Mail"
lang_m20_msmpt_spacer  = "---------------------------------------"

'*** Sub-MSMPT Default Account/Send Test E-Mail ===============================

Const lang_msmpt_account_frame         = "MSMPT Выберите Умолчанию"
Const lang_msmpt_email_test_frame      = "MSMPT Отправить тест Электронная почта"
Const lang_msmpt_email_to              = "Электронная почта Для"
Const lang_msmpt_subject               = "тема"
Const lang_msmpt_message               = "сообщение"  
Const lang_msmpt_send_mail_bt          = "Отправить почту"

Const lang_msmpt_email_to_user_input   = "mexxx@tiscali.co.uk"
Const lang_msmpt_subject_user_input    = "UniServer тест"
Const lang_msmpt_message_user_input    = "Тестовое сообщение 1. Удалить и использовать ваши собственные!" 

Const lang_msmpt_test_title            = "Email испытаний"
Const lang_msmpt_test_str              = "Испытание сообщения, отправленные"

'******************************************************************************
' CRON  - Server configuration
'******************************************************************************

lang_m1_cron = " CRON"
lang_m2_cron = " Изменить Конфигурация Cron"
lang_m3_cron = " Cron контроллер"
lang_m4_cron = " Просмотр журнала"
lang_m20_cron_spacer  = "------------------------------------"

'*** Sub-CRON Cron Controller =================================================
Const lang_cron_program_legend         = "Выполнить Cron, как программа"
Const lang_cron_program_start          = "начало"
Const lang_cron_program_stop           = "остановить"

Const lang_cron_service_legend         = "Выполнить Cron как сервис"
Const lang_cron_service_install_run    = "Установка и запуск службы"
Const lang_cron_service_stop_uninstall = "Остановка и удаление службы"

'******************************************************************************
' DtDNS - Server configuration
'******************************************************************************

lang_m1_dtdns = " DtDNS"
lang_m2_dtdns = " Изменить DtDNS счетов"
lang_m3_dtdns = " Группа DtDNS UPDATE"
lang_m4_dtdns = " Включить журнал"
lang_m5_dtdns = " Просмотр журнала"
lang_m6_dtdns = " Включить в CRON"
lang_m20_dtdns_spacer  = "------------------------------"

'*** Sub-DtDNS Force DtDNS UpDATE =============================================

Const lang_dtdns_popup_title       = "DtDNS Форсировать обновление"
lang_dtdns_popup_str               = _
"DtDNS было обновить вручную"   & vbCRLF & vbCRLF &  _
"Показать журнал для деталей." 

'******************************************************************************
' DbBackup - Server configuration
'******************************************************************************

lang_m1_db_backup = " DB резервный"
lang_m2_db_backup = " Изменить DB резервного копирования конфигурации"
lang_m3_db_backup = " Группа DB резервного копирования"
lang_m4_db_backup = " Включить журнал"
lang_m5_db_backup = " Просмотр журнала"
lang_m6_db_backup = " Включить в Cron"

lang_m7_db_backup = " Выберите БД для резервного копирования"
lang_m8_db_backup = " Восстановление БД из резервной копии"
lang_m20_db_backup_spacer  = "----------------------------------------------------------------"

'*** Sub-DbBackup Force DB  Backup ============================================

Const lang_dbbackup_popup_title        = "DB группы резервного копирования"
lang_dbbackup_popup_str                = _
"База данных была вручную резервное копирование"   & vbCRLF & vbCRLF &  _
"Показать журнал для деталей." 

'*** Sub-DbBackup Select DBs to backup ========================================

Const lang_db_select_title               = "Выбор базы данных для резервного копирования"
Const lang_db_select_databases_legend    = "Базы данных MySQL"
Const lang_db_select_to_backup_legend    = "Базы данных для резервного копирования"
Const lang_db_select_database_to_backup  = "Выберите базу данных для резервного копирования"
Const lang_db_select_delete_or_save      = "Удалить элемент из файла"
Const lang_db_select_clear_bt            = "ясно"
Const lang_db_select_add_bt              = "добавлять >>"
Const lang_db_select_delete_bt           = "удалять"
Const lang_db_select_help_bt             = "помощь"

Const lang_db_select_popup_title1        = "ошибка"
Const lang_db_select_popup_str1          = "Нет базы данных выбрана"

Const lang_db_select_popup_title2        = "ошибка"
Const lang_db_select_popup_str2          = "База данных уже containined в списке"

Const lang_db_select_popup_help_title          = "Выбор базы данных для резервного копирования - Помощь"
lang_db_select_popup_help_str                  = _
"Выберите базу данных для резервного копирования:"                              & vbCRLF & vbCRLF & _ 
"Список баз данных MySQL показана слева."                                       & vbCRLF & _ 
"Выберите базу данных для резервного копирования и нажать кнопку Добавить."     & vbCRLF & _ 
"Выбранная база данных хранится в папке и отображается на"                      & vbCRLF & _ 
"право."                                                                        & vbCRLF & vbCRLF & _ 
"Удалить элемент из файла:"                                                     & vbCRLF & vbCRLF & _ 
"Список баз данных для резервного копирования это показано на рисунке справа."  & vbCRLF & _ 
"Это текущие записи сохраняются в файл."                                        & vbCRLF & _ 
"Чтобы удалить запись, выберите базу данных из списка и"                        & vbCRLF & _ 
"нажмите кнопку Удалить. "                                                      & vbCRLF & vbCRLF & _ 
"Примечание: Размещение файла"                                                  & vbCRLF & _ 
"UniServer\uni_con\db_backup\dbs_to_backup.txt"                                 & vbCRLF & vbCRLF & _ 
"Этот файл используется резервное копирование группы DB"                        & vbCRLF & _ 
"и или автоматической резервной копии с помощью Cron."

'*** Sub-DbBackup Restore DBs from backup =====================================

Const lang_db_restore_title               = "Восстановление базы данных из резервной копии"
Const lang_db_restore_databases_legend    = "Восстановление базы данных MySQL"
Const lang_db_restore_select_name         = "Выберите базу данных для восстановления"

Const lang_db_restore_bt                  = "восстановление"
Const lang_db_restore_help_bt             = "помощь"

Const lang_db_restore_popup_title1        = "ошибка"
Const lang_db_restore_popup_str1          = "Нет базы данных резервного копирования выбранных"

Const lang_db_restore_popup_title2        = "возрожденной"
Const lang_db_restore_popup_str2          = "База данных была восстановлена"

Const lang_db_restore_popup_help_title    = "Восстановление базы данных MySQL - Помощь"
lang_db_restore_popup_help_str            = _
"Этот пункт меню позволяет восстановить базу данных из"                     & vbCRLF & _ 
"файла резервной копии."                                                    & vbCRLF & vbCRLF & _ 
"Восстановление:"                                                           & vbCRLF & _ 
"Список резервных копий MySQL на дисплее."                                  & vbCRLF & _  
"Выберите базу данных для восстановления и нажмите кнопку Восстановить."    & vbCRLF & vbCRLF & _  
"Формат файла: dbname_time stamp_.sql"

'******************************************************************************
' Perl - Server configuration
'******************************************************************************

lang_m1_perl = " PERL"
lang_m2_perl = " Perl панель управления"
lang_m20_perl_spacer  = "----------------------------"

'*** Sub-Perl Force Shebang Update/Convert Win2Nix/Run Test Script ============

Const lang_perl_control_legend        = "Perl панель управления"
Const lang_perl_force_update          = "Обновление группы притон"
Const lang_perl_convert_win2nix       = "конвертировать Win2Nix"
Const lang_perl_run_test_script       = "Выполнение тестовых сценариев"

Const lang_perl_popup_title1          = "Ошибка Perl - Perl не установлен!"
lang_perl_popup_str1                  = _
"Как установить Perl:"                                 & vbCRLF  & vbCRLF &  _                          
"Перейдите к папкеUniServer\alt_diag\install_perl"     & vbCRLF &  _ 
"и следуйте инструкциямRead_me.txt file"               & vbCRLF  & vbCRLF &  _  
"Серым меню затем становятся доступными."

Const lang_perl_popup_title2           = "Perl притон Обновлено"
lang_perl_popup_str2                   = _
"Обновлено притон в файлах: *.pl and *.cgi"            & vbCRLF  & vbCRLF &  _      
"Для папки UniServer\cgi-bin и все подпапки." 

Const lang_perl_popup_title3           = "Файл не найден"
Const lang_perl_popup_str3             = "Не удается найти файл index.pl" 

Const lang_perl_popup_title4           = "Обновление группы притон"
lang_perl_popup_str4                   = _
"Perl скрипты разработан на Unix не будет работать на окна машины"                                 & vbCRLF &  _            
"они требуют преобразования в формат Windows."                                                     & vbCRLF  & vbCRLF &  _ 
" Этот сценарий заменяет Unix притон с ОС Windows притон"                                          & vbCRLF &  _       
" Apache позволяет найти Perl переводчика"                                                         & vbCRLF & vbCRLF &  _  
"Примечание: После установки сторонних сценариев CGI-BIN запустить"                                & vbCRLF &  _ 
"Группа притон Update. После этого притон автоматически обновляется"                               & vbCRLF &  _ 
"когда серверы будут перемещены. Не забывайте использовать правильные притон для новых сценариев."

Const lang_perl_popup_title5           = "конвертировать Win2Nix"
lang_perl_popup_str5                   = _
"Perl скрипты разработан на Windows, не будет работать на машине Unix"      & vbCRLF &  _          
" они требуют преобразования в формат Unix."                                & vbCRLF  & vbCRLF &  _   
" Этот скрипт копирует все файлы в cgi-bin в новую папку \cgi-bin-unix\"    & vbCRLF &  _      
" скрипты в эту новую папку преобразуются из ОС Windows в формат Unix. "    & vbCRLF  & vbCRLF &  _     
" a) Преобразует конца строки:  Dec(#10#13=>#13) Hex 0D0A to 0A"            & vbCRLF &  _ 
"                               CR+LF to LF"                                & vbCRLF &  _ 
" b) Заменяет для Windows притон с Unix-притон"                             

Const lang_perl_popup_title6           = "Выполнение тестовых сценариев"
lang_perl_popup_str6                   = _
"Стандартная установка единого сервера содержит index.pl тестовую страницу "             & vbCRLF &  _ 
", расположенный в папке UniServer\cgi-bin. Это может быть запущена, нажав"              & vbCRLF &  _ 
"Выполнить кнопку Test Script."                                                          & vbCRLF  & vbCRLF &  _ 
"Примечание: Эта страница может быть заменен на собственную index.pl файл. "             & vbCRLF &  _ 
"Выполнение тестовых кнопку Сценарий становится короткий путь для запуска приложения."

'###-END-###


