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

Const lang_view_www   = "www vista"   'User button text
Const lang_view_ssl   = "ssl vista"   'User button text

'-------------------------------------------------- End User Configuration ---

'******************************************************************************
' Messages common functions
'******************************************************************************

Const lang_cf_title1            = "Criar MySQL Database"
Const lang_cf_str1              = "Já existe uma Base de Dados com esta denominação"

Const lang_cf_title2            = "Remove MySQL Database"
Const lang_cf_str2              = "Não existe uma Base de Dados com esta denominação."

Const lang_cf_title3            = "O arquivo solicitado"
Const lang_cf_str3              = "não encontrado"


'******************************************************************************
' Initial Start Up
'******************************************************************************

'*** Space Check ==============================================================

Const lang_space_popup_title1         = "Espaço detectado!"
lang_space_popup_str1                 = _
"Um espaço foi detectado no nome da pasta levando a pasta UniServer"                & vbCRLF & vbCRLF &  _
"Infelizmente não são permitidos espaços em nomes de caminho"                       & vbCRLF & _
"Por favor, corrija e tente novamente."                                             & vbCRLF & vbCRLF &  _
"Razões para essa restrição:"                                                       & vbCRLF & _
"Capacidade de executar aplicativos de legado."                                     & vbCRLF & _
"Isso também evita restrito permissões de gravação em C: \ Arquivos de programas."  & vbCRLF & vbCRLF &  _
"Nota:"                                                                             & vbCRLF & _
"Se você deseja rodar O servidor Uniform contendo espaços no caminho"               & vbCRLF & _
"usar um drive virtual, como explicado no documento run_on_drive_w.txt"             & vbCRLF & _
"localizado na pasta UniServer alternative_control \. adequado apenas"              & vbCRLF & _
"quando os servidores são executados como um programa"

'*** Pre Check ================================================================

Const lang_pre_popup_title1         = "Portas alerta em uso!"
Const lang_pre_in_use               = "As seguintes portas estão em uso:"
Const lang_pre_port_number          = "número da porta"
Const lang_pre_pid                  = "PID"
Const lang_pre_process_name         = "nome do processo"
Const lang_pre_path_to_process      = "Caminho para o processo de"
lang_pre_popup_str1                 = _
"Para iniciar o servidor Uniformes, as portas acima deve ser livre."  & vbCRLF &  _
"Quer parar e desinstalar o aplicativo em conflito"                   & vbCRLF &  _
"O servidor ou mover Uniform a portas diferentes."

Const lang_pre_popup_title2         = "Alterar senha MySQL!"
lang_pre_popup_str2                 = _
"Para um servidor de desenvolvimento não há necessidade real de "    & vbCRLF & _
"alterar a senha do MySQL, embora seja bom"                          & vbCRLF & _
"prática para fazê-lo."                                              & vbCRLF & vbCRLF &  _
"Se você estiver indo para usar seus servidores para a produção"     & vbCRLF & _ 
"ou colocá-los na Internet ou uma intranet, é"                       & vbCRLF & _ 
"imperativo definir uma senha MySQL nova. o padrão"                  & vbCRLF & _
"senha é publicado, para que o seu servidor já está"                 & vbCRLF & _
"comprometida."                                                      & vbCRLF & vbCRLF &  _
"Clique em SIM para alteração de senha (abre uma nova janela)"       & vbCRLF &  _
"Ou Não para ignorar a configuração da senha."

Const lang_pre_popup_title4         = "Start-up opções ignorados!"
lang_pre_popup_str4                 = _
"Você pulou uma ou mais opções de start-up de configuração."           & vbCRLF &  _ 
"A próxima vez que você iniciar o Coral vai voltar a ser solicitado."  & vbCRLF & vbCRLF &  _
"Você pode desativar levando definindo nag_user = false"               & vbCRLF &  _
"em config_tracker.ini"                                                & vbCRLF & vbCRLF &  _
"alternativamente:"                                                    & vbCRLF &  _
"Clique em Sim para desativar automaticamente alertando"               & vbCRLF &  _
"Clique em NÃO para ser solicitado próxima vez que você iniciar o Servidor"     

'*** ZoneAlarm ================================================================

Const lang_za_popup_title1         = "Aviso ZoneAlarm detectado!"
lang_za_popup_str1                 = _
"O ZoneAlarm conflitos de aplicativos com o Apache"               & vbCRLF &  _ 
"produzindo uma tela azul da morte quando Apache está fechado."   & vbCRLF & vbCRLF &  _
"ZoneAlarm recomendação SAIR antes de fechar Apache"              & vbCRLF &  _
"ou, de preferência desinstalar ZoneAlarm."          

'******************************************************************************
' Main menus - Program and Service
'******************************************************************************

'*** Run As Program ===========================================================

Const lang_legend_start_stop_servers = "Start/Stop servidores" 
Const lang_start_apache              = "iniciar o Apache"
Const lang_stop_apache               = "parar o Apache"
Const lang_start_mysql               = "iniciar o MySQL" 
Const lang_stop_mysql                = "parar MySQL" 
Const lang_start_both                = "Ambos começam"
Const lang_stop_both                 = "Ambos parar"

Const lang_program_title1            = "Apache erro Início"
Const lang_program_str1              = "Não foi possível iniciar o servidor Apache"

Const lang_program_title2            = "Apache erro Stop"
Const lang_program_str2              = "Incapaz de parar Apache Server"

Const lang_program_title3            = "MySQL Erro Início"
Const lang_program_str3              = "Não foi possível iniciar o MySQL Server"

Const lang_program_title4            = "MySQL erro de parada"
Const lang_program_str4              = "Incapaz de parar o MySQL Server"

'*** Run As Service ===========================================================

Const lang_legend_start_stop_services  = "Start/Stop serviços"

Const lang_install_apache_service      = "Serviço de instalar o Apache" 
Const lang_uninstall_apache_service    = "Desinstalar Apache Serviço"
Const lang_start_apache_service        = "Iniciar o Apache Serviço"
Const lang_stop_apache_service         = "Parar Apache Serviço" 

Const lang_install_mysql_service       = "Serviço de instalar o MySQL"
Const lang_uninstall_mysql_service     = "Desinstalar MySQL Serviço"
Const lang_start_mysql_service         = "Iniciar serviço MSQL"
Const lang_stop_mysql_service          = "Parar MySQL Serviço"

Const lang_start_both_services       = "Instalar/Executar o Apache eo MySQL Serviços" 
Const lang_stop_both_services        = "Parar/desinstalar o Apache eo MySQL Serviços" 

'*** Common Program and Service ===============================================

Const lang_server_utilities          = "Utilitários servidor" 
Const lang_mysql_console             = "MySQL Console"
Const lang_server_status             = "status do Servidor"
Const lang_server_configuration      = "Configuração do Servidor"
Const lang_multi_servers             = "Servidores de vários" 
Const lang_about                     = "sobre"

Const lang_about_popup_title1       = "sobre"
lang_about_popup_str1               = _
"Controle de servidor usa o Windows HTA e linguagem de script"  & vbCRLF &  _
"VBScript. Esta combinação permite que o servidor uniforme"     & vbCRLF &  _
"e controle de menus para serem facilmente modificados sem a"   & vbCRLF &  _
"necessidade de compilação. Além disso, diferentes línguas"     & vbCRLF &  _
"são mais facilmente suportadas."


Const lang_view_php_info             = "Ver phpinfo"
Const lang_phpmyadmin                = "phpMyAdmin"
Const lang_apache_syntax_check       = "Apache Check Syntax"         '- Button and message box title
Const lang_server_documentation      = "Documentação servidor" 
Const lang_select_language           = "           selecionar idioma" 
Const lang_select_language_spacer    = "--------------------------------------"

Const lang_documentation_popup_title       = "documentação"
lang_documentation_popup_str               = _
"Desculpe esta página documentação"             & vbCRLF &  _
"não está disponível no seu idioma."


'*** Server Status ============================================================

Const lang_server_status_page_title  = "status do Servidor"
Const lang_ss_general                = "Estado geral" 
Const lang_general_1a                = "O seu endereço IP Internet"
Const lang_general_2a                = "Internet acessível a partir de" 
Const lang_general_3a                = "Estado de funcionamento do cron"
Const lang_general_4a                = "PHP INI: php.ini file"
Const lang_general_5a                = "Nome do serviço cron"

Const lang_general_6a                = "Newer version UniServer"
Const lang_general_6b                = "indisponível"
Const lang_general_6c                = "atual"

Const lang_ss_apache_server          = "Apache Server"
Const lang_apache_1a                 = "Apache porta"
Const lang_apache_2a                 = "Apache SSL porta" 
Const lang_apache_3a                 = "Apache nome do executável"
Const lang_apache_4a                 = "Apache nome do serviço" 
Const lang_apache_5a                 = "Apache SSL de servidor" 
Const lang_apache_6a                 = "Apache estado de funcionamento" 
Const lang_apache_7a                 = "Apache estado de instalação"

Const lang_ss_mysql_server           = "MySQL Server"
Const lang_mysql_1a                  = "MySQL porta"
Const lang_mysql_2a                  = "MySQL nome do executável"
Const lang_mysql_3a                  = "Nome do serviço MySQL"
Const lang_mysql_4a                  = "MySQL estado de funcionamento"
Const lang_mysql_5a                  = "MySQL estado de instalação"

Const lang_ss_port_status            = "status da porta"
Const lang_port_1a                   = "Apache porta" 
Const lang_port_2a                   = "Apache SSL porta" 
Const lang_port_3a                   = "MySQL porta" 

Const lang_ss_get_ip                   = "Get IP"
Const lang_ss_run_access_check         = "executar verificação"
Const lang_ss_yes                      = "sim" 
Const lang_ss_no                       = "not"
Const lang_ss_running                  = "funcionamento"
Const lang_ss_not_running              = "não está em execução"
Const lang_ss_development              = "desenvolvimento" 
Const lang_ss_production               = "produção" 
Const lang_ss_enabled                  = "habilitado"
Const lang_ss_disabled                 = "com mobilidade condicionada" 
Const lang_ss_free_to_install          = "Livre para instalar" 
Const lang_ss_installed_as_service     = "Instalado como um serviço"
Const lang_ss_installed_as_program     = "Instalado como um programa"
Const lang_ss_is_free_to_use           = "Está livre para usar"
Const lang_ss_in_use_by_this_server    = "Em uso por este servidor" 
Const lang_ss_in_use_by_another_server = "Em uso por outra de servidor"

'*** Move Servers Multi-servers ===============================================

Const lang_multi_server_page_title     = "Mover servidores multi-servidores"
Const lang_multi_old_heading           = "- velho -"
Const lang_multi_new_heading           = "- novo -"
Const lang_multi_reload                = "recarregar"
Const lang_multi_increment             = "incremento"
Const lang_multi_run                   = "RUN Servidores Mova" 
Const lang_multi_invalid               = "entrada inválida"
Const lang_multi_please_correct        = "Por favor, corrija"

'##############################################################################
' Server configuration - Main Menu 
'##############################################################################

'******************************************************************************
' General - Server configuration
'******************************************************************************

lang_m1_general          = " geral"
lang_m2_general          = " Alterar as portas. Apache e MySQL"
lang_m3_general          = " Arquivos de log do servidor clara"

lang_m4_general_www         = " Www raiz - Alterar senhas e acesso"
lang_m5_general_ssl         = " Ssl raiz - Alterar senhas e acesso"
lang_m6_general_phpmyadmin  = " PhpMyAdmin raiz - Alterar o tipo de acesso"

lang_m20_general_spacer  = "--------------------------------------------------"

'*** Sub-General Change ports, Apache and MySQL ===============================

lang_port_change_reload         = "recarregar"
lang_port_change_change         = "mudança"
lang_port_change_change_all     = "Todas as mudanças"
lang_port_change_change_title   = "Port/s Changed"
lang_port_change_changed        = "Porto ou portos foram alterados"

'*** Sub-General Clear Server Log Files ======================================
Const lang_logs_title             = "Limpar Logs do Servidor"
Const lang_logs_frame             = "Selecione Log"

Const lang_log_apache_error       = "Apache Log de ​​erro"
Const lang_log_apache_access      = "Apache Log de Acesso"
Const lang_log_ssl_apache_error   = "Apache Log de ​​erro SSL"
Const lang_log_ssl_apache_access  = "Apache Log de Acesso SSL"

Const lang_log_mysql_error        = "MySQL Error Log"
Const lang_log_cron               = "Log cron"
Const lang_log_DTDNS              = "Log DTDNS"
Const lang_log_dbbackup           = "Log de ​​backup de banco de dados"

Const lang_log_select_all_bt      = "selecionar todos"
Const lang_log_clear_bt           = "Apagar seleção"

Const lang_log_popup_title1       = "Apache rodando"
lang_log_popup_str1               = _
"Apache servidor está executando. Arquivos de log não pode ser apagada."      & vbCRLF  & vbCRLF &  _  
"Por favor, pare Apache e tente novamente."

Const lang_log_popup_title2       = "MySQL em execução"
lang_log_popup_str2               = _
"MySQL servidor está executando. Arquivo de log não pode ser apagada."      & vbCRLF  & vbCRLF &  _  
"Por favor, pare MySQL e tente novamente."

Const lang_log_popup_title3       = "Conteúdo clara de arquivos de log"
lang_log_popup_str3               = _
"Arquivos de log pode se tornar muito grande use essa"       & vbCRLF &  _ 
"opção do menu para apagar o conteúdo de um"                 & vbCRLF &  _ 
"selecionados arquivo de log."                               & vbCRLF & vbCRLF &  _  
"Selecione um arquivo de log e clique em ""Botão Limpar"""   & vbCRLF & vbCRLF &  _  
"Alternativamente, clique""Select all"" botão e"             & vbCRLF &  _ 
"clique em ""Botão Limpar"""                                 & vbCRLF & vbCRLF &  _  
"Nota 1:"                                                    & vbCRLF &  _ 
"Arquivos não são excluídos apenas o conteúdo apagado."      & vbCRLF & vbCRLF &  _  
"Nota 2:"                                                    & vbCRLF &  _ 
"Parar para limpar servidores Apache e MySQL"                & vbCRLF &  _ 
"arquivos de log." 


'*** Sub-General Root www - Change passwords and access ========================
Const lang_passwords_page_title_www          = "Www raiz - Alterar senhas e acesso"
Const lang_passwords_www_legend              = "WWW Folder Uniserver ROOT \ www"

Const lang_passwords_name_www                = "nome:"
Const lang_passwords_password_www            = "senha:"
Const lang_passwords_edit_www_bt             = "editar"
Const lang_passwords_change_password_www_bt  = "Alterar a senha nome"
Const lang_passwords_reload_www              = "Atualizar os valores do arquivo"

Const lang_www_htaccess1_title               = "Nome em branco ou a senha"
Const lang_www_htaccess1_str                 = "Um nome e senha necessária"

Const lang_www_htaccess2_title               = "Nome e senha"
Const lang_www_htaccess2_str                 = "atualizado"

Const lang_passwords_state_www_legend        = "Alterar www Estado "

Const lang_www_password                      = "senha:"
Const lang_www_password_disabled             = "senha com mobilidade condicionada"
Const lang_www_password_enabled              = "senha Habilitado"
Const lang_www_access                        = "acesso:"
Const lang_www_access_local                  = "Acesso Local"
Const lang_www_access_local_intranet         = "Local e acesso à intranet"
Const lang_www_access_internet               = "Acesso Local, Intranet e Internet"

Const lang_passwords_test_www_bt             = "teste"

Const lang_www_passwords_help_title          = "Defina o acesso www. Opcionalmente senha protege"
lang_www_passwords_help_str                  = _
"visão geral:"                                                                            & vbCRLF & _
"Esta página permite que você coloque o seu servidor on-line ou restringir o acesso"      & vbCRLF & _
"ao host local (padrão) ou para localhost e Intranet. "                                   & vbCRLF & _
"Opcionalmente, você pode definir um nome e senha para acessar www pasta"                 & vbCRLF & vbCRLF & _
"1] Button "" Editar "" permite que você editar diretamente um arquivo de configuração."  & vbCRLF & vbCRLF & _
"2] Depois de inserir um nome e senha, clique em ""Alterar nome"                          & vbCRLF & _
"senha botão"". Isso atualiza o arquivo de senhas correspondentes."                       & vbCRLF & vbCRLF & _
"3] Enable and disable password protection:"                                              & vbCRLF & _
"   Use os botões para ativar ou desativar a autenticação."                               & vbCRLF & _
"   Senha com mobilidade condicionada: A autenticação não é necessária. "                 & vbCRLF & _
"   Senha Enabled: Nome e senha são necessários para acesso ao servidor."                 & vbCRLF & vbCRLF & _
"4] Local ou locais e Intranet ou acesso on-line:"                                        & vbCRLF & _
"   Use os botões para selecionar o modo de acesso necessários "                          & vbCRLF & _
"   Acesso Local: Restringe o acesso do servidor para o usuário local. "                  & vbCRLF & _
"   Locais e Intranet Acesso: Permite que os usuários no seu acesso Intranet"             & vbCRLF & _
"   Locais, Intranet e Internet Acesso: Coloca o servidor On-Line "         

'*** Sub-General Root ssl - Change passwords and access ========================
Const lang_passwords_page_title_ssl          = "Ssl raiz - Alterar senhas e acesso"
Const lang_passwords_ssl_legend              = "Pasta ROOT UniServer SSL \ ssl "

Const lang_passwords_name_ssl                = "nome:"
Const lang_passwords_password_ssl            = "senha:"
Const lang_passwords_edit_ssl_bt             = "editar"
Const lang_passwords_change_password_ssl_bt  = "Alterar a senha nome"
Const lang_passwords_reload_ssl              = "Atualizar os valores do arquivo"

Const lang_ssl_htaccess1_title               = "Nome em branco ou a senha"
Const lang_ssl_htaccess1_str                 = "Um nome e senha necessária"

Const lang_ssl_htaccess2_title               = "Nome e senha"
Const lang_ssl_htaccess2_str                 = "atualizado"

Const lang_passwords_state_ssl_legend    = "Alteração de estado ssl "

Const lang_ssl_password                      = "senha:"
Const lang_ssl_password_disabled             = "senha com mobilidade condicionada"
Const lang_ssl_password_enabled              = "senha Habilitado"
Const lang_ssl_access                        = "acesso:"
Const lang_ssl_access_local                  = "Acesso Local"
Const lang_ssl_access_local_intranet         = "Local e acesso à intranet"
Const lang_ssl_access_internet               = "Acesso Local, Intranet e Internet"

Const lang_passwords_test_ssl_bt             = "teste"

Const lang_ssl_passwords_help_title          = "Defina o acesso ssl. Opcionalmente senha protege"
lang_ssl_passwords_help_str                  = _
"visão geral:"                                                                            & vbCRLF & _
"Esta página permite que você coloque o seu servidor on-line ou restringir o acesso"      & vbCRLF & _
"ao host local (padrão) ou para localhost e Intranet. "                                   & vbCRLF & _
"Opcionalmente, você pode definir um nome e senha para acessar ssl pasta"                 & vbCRLF & vbCRLF & _
"1] Button "" Editar "" permite que você editar diretamente um arquivo de configuração."  & vbCRLF & vbCRLF & _
"2] Depois de inserir um nome e senha, clique em ""Alterar nome"                          & vbCRLF & _
"senha botão"". Isso atualiza o arquivo de senhas correspondentes."                       & vbCRLF & vbCRLF & _
"3] Enable and disable password protection:"                                              & vbCRLF & _
"   Use os botões para ativar ou desativar a autenticação."                               & vbCRLF & _
"   Senha com mobilidade condicionada: A autenticação não é necessária. "                 & vbCRLF & _
"   Senha Enabled: Nome e senha são necessários para acesso ao servidor."                 & vbCRLF & vbCRLF & _
"4] Local ou locais e Intranet ou acesso on-line:"                                        & vbCRLF & _
"   Use os botões para selecionar o modo de acesso necessários "                          & vbCRLF & _
"   Acesso Local: Restringe o acesso do servidor para o usuário local. "                  & vbCRLF & _
"   Locais e Intranet Acesso: Permite que os usuários no seu acesso Intranet"             & vbCRLF & _
"   Locais, Intranet e Internet Acesso: Coloca o servidor On-Line "         
      

'*** Sub-General Root phpmyadmin - Change passwords and access ========================
Const lang_passwords_page_title_phpmyadmin          = "phpMyAdmin - Alterar Acesso"
Const lang_passwords_phpmyadmin_legend              = "Acesso phpMyAdmin"

Const lang_phpmyadmin_access_local                  = "Local"
Const lang_phpmyadmin_access_local_intranet         = "Intranet + senhas"
Const lang_phpmyadmin_access_internet               = "Internet + senhas + ssl"

Const lang_passwords_phpmyadmin_legend2             = "Opção de editar arquivos de configuração"
Const lang_passwords_edit1_phpmyadmin_bt            = "Ver ou Editar. Htaccess"
Const lang_passwords_edit2_phpmyadmin_bt            = "Ver ou Editar config.inc.php"
Const lang_passwords_test_phpmyadmin_bt             = "Teste - Ver no navegador"

Const lang_phpmyadmin_passwords_title1              = "SSL não habilitado"
lang_phpmyadmin_passwords_str1                      = _
"Esta opção não está disponível!"                                                & vbCRLF & vbCRLF & _
"Permitindo acesso à Internet para phpMyAdmin exige SSL para ser ativado."        & vbCRLF & _
"SSL criptografa todas as transações através da Internet."                        & vbCRLF & vbCRLF & _
"Nenhuma ação foi realizada para além de retornar ao estado anterior de acesso."  & vbCRLF & _
"Execute novamente esta opção de menu depois de ativar SSL."                      & vbCRLF & vbCRLF & _
"Nota:"                                                                           & vbCRLF & _
"SSL é ativado automaticamente quando a criação de um certificado de servidor."

Const lang_phpmyadmin_passwords_help_title          = "Definir acesso phpmyadmin."
lang_phpmyadmin_passwords_help_str                  = _
"visão geral:"                                                                             & vbCRLF & _
"Este menu permite que você mude o acesso phpMyAdmin e visualizar ou editar manualmente"   & vbCRLF & _
"associados arquivos de configuração."                                                     & vbCRLF & vbCRLF & _
"1] Locais"                                                                                & vbCRLF & _
"De acesso local é o padrão. Isso restringe o acesso ao phpMyAdmin localhost"              & vbCRLF & _
"o que significa que é acessível apenas a partir do PC que está sendo executado. Além de"  & vbCRLF & _
"acessar o servidor MySQL sem senha é exigido ele automaticamente usa root."               & vbCRLF & vbCRLF & _
"2] Intranet + senhas"                                                                     & vbCRLF & _
"Esta opção permite aos usuários acesso a Intranet do servidor MySQL para ter acesso"      & vbCRLF & _
"todos os usuários são obrigados a digitar um nome e senha. "                              & vbCRLF & vbCRLF & _
"3] + Internet + ssl senhas"                                                               & vbCRLF & _
"Esta opção permite o acesso à Internet aos usuários do servidor MySQL para ter acesso"    & vbCRLF & _
"todos os usuários são obrigados a digitar um nome e senha. Todas as transações ocorrem"   & vbCRLF & _
"através de uma conexão segura e criptografada."                                           & vbCRLF & _
"Nota: Esta opção é desabilitada até que um certificado de servidor foi gerado."

'******************************************************************************
' Apache - Server configuration
'******************************************************************************

lang_m1_apache   = " Apache"
lang_m2_apache   = " Editar configuração básica"
lang_m3_apache   = " Editar httpd.conf"
lang_m4_apache   = " Editar httpd-ssl.conf"
lang_m5_apache   = " Erro error.log Ver arquivo de log"
lang_m6_apache   = " Ver arquivo de log de ​​acesso access.log"
lang_m7_apache   = " Ver SSL de erro error.log arquivo de log"
lang_m8_apache   = " Ver SSL Acesso access.log arquivo de log"
lang_m9_apache   = " gerar Certificado"
lang_m10_apache  = " vhosts Apache"
lang_m12_apache  = " Apache server-status"
lang_m13_apache  = " Apache server-info"
lang_m14_apache  = " Módulos de Apache Activar/Desactivar"
lang_m20_apache_spacer  = "---------------------------------------------------"

'*** Sub-Apache Edit Basic Configuration ======================================

Const lang_ab_page_title              = "Configuração básica do Apache"
Const lang_ab_legend                  = "Parâmetros comumente alterados"
Const lang_ab_server_name             = "nome do servidor" 
Const lang_ab_admin_email             = "E-mail Server Admin" 
Const lang_ab_directory_indexs        = "Índice de arquivos do diretório" 
Const lang_ab_server_side_includes    = "Server Side Includes" 
Const lang_ab_server_signature        = "Assinatura do servidor" 
Const lang_ab_listen                  = "porta de escuta" 
Const lang_ab_update_configuration_bt = "atualização de configuração" 
Const lang_ab_help_bt                 = "ajuda" 

Const lang_ab_help_title              = "Configuração básica do Apache"
lang_ab_help_str                      = _
"Esta forma permite que você mude comumente configurado"           & vbCRLF & _
"Opções Apache."                                                   & vbCRLF & vbCRLF & _
"Para editar a configuração inteira do Apache, selecione Editar"   & vbCRLF & _
"httpd.conf Apache a partir do menu drop-down."  

'*** Sub-Apache Generate Certificate ==========================================

Const lang_openssl_page_title          = "Certificado do servidor e gerador de chaves"
Const lang_openssl_cn                  = "Nome do host ou seu nome completo"
Const lang_openssl_o                   = "Organização/Empresa" 
Const lang_openssl_ou                  = "departamento"
Const lang_openssl_e                   = "e-mail"
Const lang_openssl_l                   = "Cidade/Local"
Const lang_openssl_st                  = "estado"
Const lang_openssl_c                   = "país"
Const lang_openssl_rsa_bits            = "os bits RSA"
Const lang_openssl_bt_reload           = "Atualizar Padrões"
Const lang_openssl_bt_generate         = "executar Gerar"

lang_openssl_cn_help_title             = "Ajuda - CN Nome comum"
lang_openssl_cn_help =  _
"(CN) Nome comum, geralmente o servidor web host ou seu nome."    & vbCRLF &  _
" Para garantir https://www.fred.com, o seu nome comum é www.fred.com"  & vbCRLF &  _ 
" ou *. fred.com para um certificado curinga."

lang_openssl_o_help_title              = "Ajuda - O organização"
lang_openssl_o_help =  "(O) Organização por exemplo, Meu Corporação"

lang_openssl_ou_help_title             = "Ajuda - OU Unidade de Organização"
lang_openssl_ou_help =  "(OU) Sua divisão ou departamento. Por exemplo, PHP Departamento"

lang_openssl_email_help_title          = "Ajuda - E-mail"
lang_openssl_email_help =  _
"(E) Normalmente especificado para um certificado de usuário de e-mail"    & vbCRLF &  _
" para Activesync ou SMIM."

lang_openssl_l_help_title             = "Ajuda - City/L local"
lang_openssl_l_help =  "(L) Cidade/Local Por exemplo, em Londres."

lang_openssl_st_help_title            = "Ajuda - ST Estado"
lang_openssl_st_help =  "(ST) Por exemplo, Cambridgeshire."

lang_openssl_c_help_title             = "Ajuda - C País"
lang_openssl_c_help = _
"(C) Código do país dois caracteres alfabéticos."    & vbCRLF &  _
"Por exemplo 'United Kingdom' dá 'UK' "

lang_openssl_rsa_help_title           = "Ajuda - Comprimento de bit RSA"
lang_openssl_rsa_help = _
"Autoridades de certificação não são mais emissão"                  & vbCRLF &  _
"certificados que são menos de 2.048 comprimentos de chave bit."    & vbCRLF &  _
"Recomendado deixar esta definido como padrão de 2048 bits." 

lang_openssl_ca_detected_title             = "CA encontrado"
lang_openssl_ca_detected = _
"Parece que você está usando sua própria CA."                                & vbCRLF & vbCRLF & _
"Para evitar a substituição de seu certificado de servidor atual e chave"    & vbCRLF &  _
"este script foi finalizado."                                                & vbCRLF & vbCRLF & _
"Para criar um novo certificado de servidor e uma chave, use o script CA." 

lang_openssl_cert_detected_title             = "Certificado servidor encontrado"
lang_openssl_cert_detected = _
"Um certificado de servidor foi encontrado."                     & vbCRLF & vbCRLF & _
"Gostaria de substituir o certificado de servidor e uma chave"   & vbCRLF & vbCRLF & _
"                                          Substituir?"

lang_openssl_generated_title             = "Certificado de servidor gerado"
lang_openssl_generated = _
"Certificado de servidor e uma chave gerada."             & vbCRLF & vbCRLF & _
"Estes foram instalados e"                                & vbCRLF &  _
"SSL foi ativado no arquivo de configuração do Apache."   & vbCRLF & vbCRLF & _
"Reiniciar os servidores para que as alterações ocorrem." & vbCRLF

'*** Sub-Apache APACHE VHOSTS =================================================

Const lang_av_apache_virtual_hosts_title  = "Hosts Apache Virtual"
Const lang_av_virtual_host_setup_frame    = "Setup Host Virtual"
Const lang_av_list_of_hosts_frame         = "Lista de Hosts"

Const lang_av_port_td                     = "porto"
Const lang_av_server_admin_td             = "admin Server"
Const lang_av_document_root_td            = "Root documento"
Const lang_av_server_name_td              = "Nome do Servidor"
Const lang_av_server_alias_td             = "Alias ​​servidor"
Const lang_av_error_log_td                = "Log de ​​erro"
Const lang_av_custom_log_td               = "Log personalizado"
Const lang_av_additions_td                = "directivas adicionais"
Const lang_av_vhost_help_td               = "Ajuda vhost"

Const lang_av_delete_bt                   = "excluir"
Const lang_av_update_vhost_bt             = "atualização vhost"
Const lang_av_create_vhost_bt             = "Criar vhost"
Const lang_av_cancel_bt                   = "cancelar"

Const lang_av_select_folder_bt            = "selecionar Pasta"
Const lang_av_confirm_name_bt             = "confirmar"

Const lang_av_delete_vhost_bt             = "excluir vhost"
Const lang_av_view_in_browser_bt          = "Exibir no Navegador"
Const lang_av_cancel2_bt                  = "cancelar"

'--Port
Const lang_av_popup_title1                = "VHost Porto"
lang_av_popup_str1                        = _
"Porto vhost padrão usa a porta principal do servidor escuta."  & vbCRLF &  _   
"Isso geralmente é a porta padrão 80."                          & vbCRLF &  _   
"Execução de atualizações multi-servidor do menu esta porta."   & vbCRLF & vbCRLF &  _ 
"Você pode alterar valor da porta. Torna-se fixo e"             & vbCRLF &  _   
"não atualizados quando multi-servidor do menu é executado."

'--Server Admin
Const lang_av_popup_title2                = "admin Server"
lang_av_popup_str2                        = _
"E-mail para o administrador do site."                      & vbCRLF &  _  
"Este é derivado do nome do servidor por padrão."           & vbCRLF & vbCRLF &  _ 
"Você pode usar qualquer e-mail que você preferir."         & vbCRLF & vbCRLF &  _ 
"Alternativamente excluir este, clicando no botão excluir."

'--Document Root
Const lang_av_popup_title3                = "Root documento"
lang_av_popup_str3                        = _
"Raiz do documento é o caminho completo para uma pasta. apache"  & vbCRLF &  _ 
"servirá um site hospedeiro a partir desta pasta."               & vbCRLF & vbCRLF &  _ 
"1) Para portabilidade usar o caminho padrão exibido"            & vbCRLF &  _ 
"   *** substituir com a pasta que você deseja usar."            & vbCRLF & vbCRLF &  _ 
"2) Em alternativa, utilize o Selecionar Pasta botão."           & vbCRLF &  _ 
"   No popup navegar e selecionar pasta desejada."               & vbCRLF &  _ 
"   Clique em OK para aceitar."                                  & vbCRLF & vbCRLF &  _ 
"Nota:"                                                          & vbCRLF &  _ 
"O script irá substituir de volta com barras"                    & vbCRLF &  _ 
" barras. Se a pasta não existir, ele"                           & vbCRLF &  _ 
" será criado."

'--Document Root Browse Folder Dialog
Const lang_av_folder_dialog_str1          = "Selecione uma pasta para a pasta raiz vhost."
Const lang_av_folder_dialog_str2          = "Alternativamente criar uma nova pasta para usar." 

'--Server Name - Host Name
Const lang_av_popup_title4                = "Nome do Servidor - Nome do host"
lang_av_popup_str4                        = _
"Nome do host é o endereço que você digitar em"                    & vbCRLF &  _             
"um navegador, excluindo a parte http://."                         & vbCRLF & vbCRLF &  _ 
"Exemplo 1:"                                                       & vbCRLF &  _ 
"Endereço de Internet completo: http://www.me.com"                 & vbCRLF &  _ 
"Nome do host: www.me.com"                                         & vbCRLF & vbCRLF &  _ 
"Exemplo 2:"                                                       & vbCRLF &  _ 
"Endereço de Internet completo: http://uniserver.com"              & vbCRLF &  _ 
"Nome do host: uniserver.com"                                      & vbCRLF & vbCRLF &  _ 
"Depois de entrar Host Name clique no botão ""Confirmar"" botão."  & vbCRLF &  _ 
"Isso permite que as opções de menu e os padrões de displays."     & vbCRLF &  _ 
"Alterar ou eliminar padrões conforme o caso."

'---Server Alias
Const lang_av_popup_title5                = "Alias ​​servidor"
lang_av_popup_str5                        = _
"Alias ​​de servidor permite que o servidor para ser acessível por mais"  & vbCRLF &  _ 
"de um nome. "                                                          & vbCRLF & vbCRLF &  _ 
"Você deve ter um servidor DNS corretamente configurado para mapa"      & vbCRLF &  _ 
"esses nomes para um endereço IP associado com o seu servidor."         & vbCRLF & vbCRLF &  _ 
"Os padrões oferecidos são derivados a partir do seu ""Nome de Host""." & vbCRLF &  _ 
"Alterar ou eliminar padrões conforme o caso."

'---Error Log
Const lang_av_popup_title6                = "Log de ​​erro"
lang_av_popup_str6                        = _
"A directiva ErrorLog define o nome do arquivo para o qual"                    & vbCRLF &  _ 
"o servidor irá registrar todos os erros que encontra. Se o file-path"         & vbCRLF &  _ 
"não é absoluta, então é assumido como sendo relativo ao"                      & vbCRLF &  _ 
"o ServerRoot."                                                                & vbCRLF & vbCRLF &  _ 
"O padrão oferecido é derivado de seu ""Nome do Servidor""."                   & vbCRLF &  _ 
"Alterar ou excluir padrão conforme o caso."                                   & vbCRLF & vbCRLF &  _ 
"Observação: Para minimizar os recursos de arquivo excluir esta opção. erros"  & vbCRLF &  _ 
"serão registradas no arquivo do servidor principal.  "

'---Custom Log
Const lang_av_popup_title7                = "Log personalizado"
lang_av_popup_str7                        = _
"A directiva CustomLog define o nome do arquivo para o qual"                    & vbCRLF &  _ 
"o servidor irá registrar informações de acesso. Se o file-path"                & vbCRLF &  _ 
"não é absoluta, então é assumido como sendo relativo ao"                       & vbCRLF &  _ 
"o ServerRoot."                                                                 & vbCRLF & vbCRLF &  _ 
"O padrão oferecido é derivado de seu ""Nome do servidor"""                     & vbCRLF &  _ 
"Alterar ou excluir padrão conforme o caso."                                    & vbCRLF & vbCRLF &  _ 
"Observação: Para minimizar os recursos de arquivo excluir esta opção. acessos" & vbCRLF &  _ 
"serão registradas no arquivo principal servidor de acesso.  "

'--Additional Directives
Const lang_av_popup_title8                = "Directivas adicionais Apache"
lang_av_popup_str8                        = _
"Directivas adicionais Apache"                                            & vbCRLF &  _
"Cada vhost herda as definições dos principais"                           & vbCRLF &  _
"configuração do servidor."                                               & vbCRLF & vbCRLF &  _  
"Colocar estas directivas em um vhost será"                               & vbCRLF &  _
"substituir as configurações principais servidores permitindo que cada"   & vbCRLF &  _
"Vhost-se independentemente adaptados."                                   & vbCRLF & vbCRLF &  _ 
"Exemplo 1: Você pode exigir código entre as linhas pontilhadas:"         & vbCRLF & vbCRLF &  _ 
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

Const lang_av_popup_title9       = "Documento de erro Pasta Root"
Const lang_av_popup_str9         = "Por favor, eneter ou selecione uma pasta raiz do documento"

Const lang_av_popup_title10      = "Nome de erro do servidor"
Const lang_av_popup_str10        = "Por favor, eneter um nome de servidor"

Const lang_av_popup_title11      = "Nome de erro do servidor"
Const lang_av_popup_str11        = "Nome do servidor já existe no arquivo de configuração!"

Const lang_av_popup_title12      = "Excluir pasta raiz"
Const lang_av_popup_str12        = "Você quer apagar pasta raiz?"

Const lang_av_popup_title13      = "Configuração de vhost atualizada"
Const lang_av_popup_str13        = "Para que as alterações entrem em vigor reinicie o servidor Apache"

'******************************************************************************
' MySQL - Server configuration
'******************************************************************************

lang_m1_mysql  = " MySQL"
lang_m2_mysql  = " alterar senha"
lang_m3_mysql  = " Recuperar Senha"

lang_m4_mysql  = " Editar myini"
lang_m5_mysql  = " Ver arquivo de log de ​​erro mysql.err"

lang_m6_mysql  = " Criar excluir do banco de dados"
lang_m7_mysql  = " Criar usuário MySQL Restrito"
lang_m8_mysql  = " Editar Usuário MySQL Restrito"
lang_m9_mysql  = " InnoDB ativar/desativar"

lang_m20_mysql_spacer  = "----------------------------------------------"

'*** Sub-MySQL Change Password ================================================

Const lang_new_mysql_password_title    = "Novo conjunto MySQL Senha"
Const lang_new_pass_mysql_legend       = "Novo conjunto Status da senha MySQL" 
Const lang_new_pass_starting_1         = "Iniciando o MySQL server"
Const lang_new_setting_new_password    = "Configuração nova senha"
Const lang_new_popup_title             = "MySQL Senha Root"
Const lang_new_popup_str               = "MySQL senha de root foi alterada"

Const lang_new_enter_pass_mysql_legend = "Digite uma nova senha"
Const lang_new_change_mysql_password   = "alterar a senha"
Const lang_new_error_title             = "erro"
Const lang_new_error_str               = "Digite uma senha"

'*** Sub-MySQL Restore Password ===============================================

Const lang_restore_mysql_password_title  = "Restore MySQL Senha"
Const lang_restore_mysql_legend          = "Restaurando MySQL password" 
Const lang_restore_stopping_kill         = "Parar ou matar servidor"
Const lang_restore_start_nogrant         = "Reinicie o servidor MySQL sem conceder"
Const lang_restore_root                  = "Senha para restaurar a raiz"
Const lang_restore_kill_no_grant         = "Não matar conceder MySQL server"
Const lang_restore_initial               = "Restaurar o estado inicial do servidor MySQL"

Const lang_restore_run_legend            = "Recuperar Senha"
Const lang_restore_run_button            = "executar restaurar"

Const lang_restore_popup_title           = "MySQL Senha"
Const lang_restore_popup_str             = "MySQL password foi restaurado"


'*** Sub-MySQL Create delete Database =========================================

Const lang_create_delete_mysql_db_title   = "Excluir criar banco de dados MySQL"
Const lang_create_database_mysql_legend   = "Criar um banco de dados" 
Const lang_clear_both_mysql_legend        = "Ambos clara" 
Const lang_delete_database_mysql_legend   = "Excluir um banco de dados" 

Const lang_enter_name_to_create_mysql     = "Digite o nome do banco de dados para criar" 
Const lang_select_name_to_delete_mysql    = "Selecione banco de dados para apagar" 

Const lang_create_database_mysql_bt       = "Criar banco de dados" 
Const lang_clear_both_mysql_bt            = "Ambos clara" 
Const lang_delete_database_mysql_bt       = "excluir banco de Dados" 

Const lang_create_mysql_popup_title1      = "erro"
Const lang_create_mysql_popup_str1        = "Por favor, insira um nome de banco de dados"

Const lang_create_mysql_popup_title2      = "erro"
Const lang_create_mysql_popup_str2        = "Banco de dados já criado!"

Const lang_create_mysql_popup_title3      = "erro"
Const lang_create_mysql_popup_str3        = "No database selected"

Const lang_create_mysql_popup_title4      = "MySQL não está em execução"
Const lang_create_mysql_popup_str4        = "Para usar este item de menu inicie o servidor MySQL"

'*** Sub-MySQL Create Restricted MySQL User ===================================

Const lang_create_restricted_mysql_user_title   = "Criar usuário MySQL Restrito"
Const lang_cr_mysql_create_legend               = "Criar Usuário restrito"
Const lang_cr_mysql_privileges_legend           = "privilégios"
Const lang_cr_mysql_option_select_db            = "Opção de selecionar um banco de dados"
Const lang_cr_mysql_user_name                   = "nome de usuário"
Const lang_cr_mysql_user_password               = "senha"
Const lang_cr_mysql_database_name               = "banco de dados"

Const lang_cr_mysql_select                      = "selecionar"
Const lang_cr_mysql_insert                      = "inserir"
Const lang_cr_mysql_update                      = "atualizar"
Const lang_cr_mysql_delete                      = "excluir"
Const lang_cr_mysql_create                      = "criar"
Const lang_cr_mysql_drop                        = "gota"
Const lang_cr_mysql_alter                       = "idade"
Const lang_cr_mysql_index                       = "índice"

Const lang_cr_mysql_cancel_bt                   = "cancelar"
Const lang_cr_mysql_create_bt                   = "Criar Usuário"
Const lang_cr_mysql_help_bt                     = "ajuda"

Const lang_cr_mysql_popup_title1                = "Nome de Usuário vazio"
Const lang_cr_mysql_popup_str1                  = "Digite um nome de usuário"

Const lang_cr_mysql_popup_title2                = "senha em branco"
Const lang_cr_mysql_popup_str2                  = "Por favor digite uma senha de usuário"

Const lang_cr_mysql_popup_title3                = "Nome do banco de dados vazio"
Const lang_cr_mysql_popup_str3                  = "Por favor, digite ou selecione um nome de banco"

Const lang_cr_mysql_popup_title4                = "criado"
Const lang_cr_mysql_popup_str4                  = "Usuário restrito MySQL Criado"

Const lang_cr_mysql_popup_help_title            = "Restrito Usuário MySQL - Ajuda"
lang_cr_mysql_popup_help_str                    = _
"Este item de menu cria um usuário MySQL com privilégios restritos."     & vbCRLF & vbCRLF & _  
"Digite um nome de usuário e senha."                                     & vbCRLF & _                 
"Selecione os privilégios do usuário."                                   & vbCRLF & vbCRLF & _        
"Este utilizador está restrito a utilizar um banco de dados único."      & vbCRLF & _    
"Digite um nome de banco de dados ou selecionar um da lista de opções."  & vbCRLF & _      
"Se o banco não sair ele é criado."             

'*** Sub-MySQL Edit Restricted MySQL User =====================================

Const lang_edit_restricted_mysql_user_title     = "Editar Usuário MySQL Restrito"
Const lang_er_mysql_edit_legend                 = "Editar Usuário restrito"
Const lang_er_mysql_privileges_legend           = "privilégios"
Const lang_er_mysql_select_user                 = "Selecione um usuário"
Const lang_er_mysql_user_name                   = "nome de usuário"
Const lang_er_mysql_user_password               = "senha"
Const lang_er_mysql_database_name               = "banco de dados"

Const lang_er_mysql_select                      = "selecionar"
Const lang_er_mysql_insert                      = "inserir"
Const lang_er_mysql_update                      = "atualizar"
Const lang_er_mysql_delete                      = "excluir"
Const lang_er_mysql_create                      = "criar"
Const lang_er_mysql_drop                        = "gota"
Const lang_er_mysql_alter                       = "idade"
Const lang_er_mysql_index                       = "índice"

Const lang_er_mysql_cancel_bt                   = "cancelar"
Const lang_er_mysql_update_bt                   = "Usuário atualização"
Const lang_er_mysql_help_bt                     = "ajuda"
Const lang_er_mysql_delete_bt                   = "excluir"

Const lang_er_mysql_popup_title1                = "Nome de Usuário vazio"
Const lang_er_mysql_popup_str1                  = "Digite um nome de usuário"

Const lang_er_mysql_popup_title2                = "senha em branco"
Const lang_er_mysql_popup_str2                  = "Por favor digite uma senha de usuário"

Const lang_er_mysql_popup_title3                = "Nome do banco de dados vazio"
Const lang_er_mysql_popup_str3                  = "Por favor, digite ou selecione um nome de banco"

Const lang_er_mysql_popup_title4                = "criado"
Const lang_er_mysql_popup_str4                  = "Usuário restrito MySQL Criado"

Const lang_er_mysql_popup_title5                = "atualizado"
Const lang_er_mysql_popup_str5                  = "Usuário MySQL restrito Atualizado"

Const lang_er_mysql_popup_help_title            = "Editar Restrito Usuário MySQL - Ajuda"
lang_er_mysql_popup_help_str                    = _
"A partir deste item de menu você pode excluir"                            & vbCRLF & _ 
"ou atualizar um usuário MySQL restrito."                                  & vbCRLF & vbCRLF & _  
"delete:"                                                                  & vbCRLF & _                                                        
"Selecione usuário da lista e clique no botão excluir "                    & vbCRLF & vbCRLF & _             
"Update:  "                                                                & vbCRLF & _ 
"Selecione usuário da lista. Alterar os parâmetros conforme necessário. "  & vbCRLF & _ 
"Clique no botão Usuário Update."

'*** Sub-MySQL InnoDB Enable/Disable ==========================================
Const lang_innodb_mysql_str1                  = "permitir InnoDB"

'******************************************************************************
' PHP - Server configuration
'******************************************************************************

lang_m1_php  = " PHP"
lang_m2_php  = " Editar configuração básica"
lang_m3_php  = " Edite o arquivo de configuração atual: php.ini"
lang_m4_php  = " Edite o arquivo de configuração Produção: php_production.ini"
lang_m5_php  = " Edite o arquivo de configuração Desenvolvimento: php_development.ini"
lang_m6_php  = " Comando editar o arquivo de configuração Line: php-cli.ini"
lang_m7_php  = " Mude para o arquivo de configuração de Desenvolvimento"
lang_m8_php  = " Mude para o arquivo de configuração de Produção"
lang_m9_php  = " phpinfo () - Display de Informações PHP"
lang_m10_php = " Aceleradores PHP APC e eAccelerator e ZOP"
lang_m11_php = " Pear painel de controle"
lang_m12_php = " Extensões PHP Activar/Desactivar"

lang_m20_php_spacer  = "---------------------------------------------------------------------------------------"

'*** Sub-PHP Edit Basic Configuration =========================================

Const lang_php_page_title                          = "Configuração básica do PHP"
Const lang_php_current_frame                       = "atual"
Const lang_php_development_frame                   = "desenvolvimento"
Const lang_php_production_frame                    = "produção"

Const lang_php_safe_mode_label                     = "Modo de Segurança"
Const lang_php_Show_PHP_in_server_signature_label  = "Mostrar PHP na assinatura do servidor"
Const lang_php_register_globals_label              = "Register Globals"
Const lang_php_maximum_script_execute_time_label   = "Máxima Script Execute Time (s.)"
Const lang_php_maximum_memory_amount_label         = "Quantidade máxima de memória (MB)"
Const lang_php_display_errors_label                = "Erros de exibição"
Const lang_php_maximum_post_size_label             = "Tamanho máximo Mensagem"
Const lang_php_maximum_upload_size_label           = "Tamanho máximo de upload"
Const lang_php_short_open_tags_label               = "Curto Tags abertas"
Const lang_php_display_startup_errors_label        = "Exibir erros de inicialização"
Const lang_php_track_errors_label                  = "erros faixa"
Const lang_php_html_errors_label                   = "erros de html"
Const lang_php_variables_order_label               = "Para variáveis"

Const lang_php_help_bt                             = "ajuda"
Const lang_php_update_bt                           = "atualizar"

'-- Current updated
Const lang_php_current_config_title              = "Atualizado PHP atual"
lang_php_current_config_str                      = _
"O arquivo de configuração atual do PHP foi atualizado"               & vbCRLF & vbCRLF & _
"Para que as alterações entrem em vigor reinicie o servidor Apache"

'-- Development updated
Const lang_php_develpopment_config_title         = "PHP Development Atualizado"
lang_php_develpopment_config_str                 = _
"O desenvolvimento arquivo de configuração do PHP foi atualizado "             & vbCRLF & vbCRLF & _
"Para que as alterações tenham efeito:  "                                       & vbCRLF & vbCRLF & _
" 1] para o desenvolvimento deste substitui o arquivo de configuração atual."   & vbCRLF & _
" 2] Reinicie o servidor Apache "

'-- Production updated
Const lang_php_production_config_title           = "Produção PHP Atualizado"
lang_php_production_config_str                   = _
"A produção de arquivos de configuração do PHP foi atualizado"           & vbCRLF & vbCRLF & _
"Para que as alterações tenham efeito:"                                  & vbCRLF & vbCRLF & _
" 1] para a produção deste substitui o arquivo de configuração atual."   & vbCRLF & _
" 2] Reinicie o servidor Apache" 

'-- Main help
Const lang_php_config_main_help_title              = "Configuração PHP"
lang_php_config_main_help_str                      = _
"Esta forma permite que você altere as opções do PHP normalmente configurado"      & vbCRLF & vbCRLF & _ 
"Ini atual PHP:"                                                                   & vbCRLF & _ 
"  Mudar para desenvolvimento ou produção substitui este arquivo"                  & vbCRLF & vbCRLF & _ 
"php_development.ini file."                                                        & vbCRLF & _ 
"  Permite que os erros a serem gravados para tela. Você pode permitir que outros" & vbCRLF & _ 
"  parâmetros para o teste."                                                       & vbCRLF & vbCRLF & _ 
"php_production.ini arquivo."                                                      & vbCRLF & _ 
"  Evita erros sendo escrita para a tela. Configurações de reforçar a segurança."  & vbCRLF & _ 
"  Por exemplo, globals estão desligados por padrão."  

'*** Sub-PHP Switch to Development/Production Configuration file ==============

Const lang_php_switching_title         = "PHP arquivo de configuração" 
Const lang_php_switched_to_production  = "Arquivo de configuração foi mudado para Produção" 
Const lang_php_switched_to_development = "Arquivo de configuração foi mudado para Develpopment"

'*** Sub-PHP PHP Accelerators eAccelerator and APC and ZOP =====
Const lang_accel_eaccelerator_legend   = "eAccelerator"
Const lang_accel_eaccelerator_bti      = "eAccelerator painel de controle"
Const lang_accel_eaccelerator_txt1     = "habilitar eAccelerator"


Const lang_accel_apc_legend            = "APC"
Const lang_accel_apc_bti               = "APC do painel de controle"
Const lang_accel_apc_txt1              = "habilitar APC"

Const lang_accel_zop_legend            = "Além disso Zend OpCache"
Const lang_accel_zop_bti               = "Zend OpCache Além do painel de controle"
Const lang_accel_zop_txt1              = "Ativar Zend OpCache Além"

Const lang_accel_title                 = "Configuração PHP"
lang_accel_str                         = _
"Os arquivos de configuração do PHP foram atualizados."   & vbCRLF & vbCRLF & _
"Reiniciar os servidores para que as alterações ocorrem." 



'*** Sub-PHP Pear Control ==============

Const lang_pear_leg             = "Pear Controle"
Const lang_pear_install_bt      = "instale Pear"
Const lang_pear_frontend_bt     = "Ver Pear front-end"


'******************************************************************************
' MSMPT - Server configuration
'******************************************************************************

lang_m1_msmpt = " MSMPT"
lang_m2_msmpt = " Editar configuração MSMPT"
lang_m3_msmpt = " Conta padrão"
lang_m4_msmpt = " View Log"
lang_m5_msmpt = " Enviar um email de teste"
lang_m20_msmpt_spacer  = "---------------------------------"

'*** Sub-MSMPT Default Account/Send Test E-Mail ===============================

Const lang_msmpt_account_frame         = "MSMPT Selecione Conta Padrão"
Const lang_msmpt_email_test_frame      = "MSMPT Enviar um teste E-mail"
Const lang_msmpt_email_to              = "Para e-mail"
Const lang_msmpt_subject               = "assunto"
Const lang_msmpt_message               = "mensagem"  
Const lang_msmpt_send_mail_bt          = "Enviar Mail"

Const lang_msmpt_email_to_user_input   = "mexxx@tiscali.co.uk"
Const lang_msmpt_subject_user_input    = "UniServer Teste"
Const lang_msmpt_message_user_input    = "Mensagem de teste 1. Apagar e usar o seu próprio!" 

Const lang_msmpt_test_title            = "Teste de e-mail"
Const lang_msmpt_test_str              = "E-mail de teste enviado"

'******************************************************************************
' CRON  - Server configuration
'******************************************************************************

lang_m1_cron = " CRON"
lang_m2_cron = " Editar configuração Cron"
lang_m3_cron = " Controlador cron"
lang_m4_cron = " Ver Log"
lang_m20_cron_spacer  = "---------------------------------"

'*** Sub-CRON Cron Controller =================================================
Const lang_cron_program_legend         = "Cron executar como um programa"
Const lang_cron_program_start          = "começar"
Const lang_cron_program_stop           = "parar"

Const lang_cron_service_legend         = "Cron executar como um serviço"
Const lang_cron_service_install_run    = "Instalar e executar serviço"
Const lang_cron_service_stop_uninstall = "Pare e desinstalar o Service"

'******************************************************************************
' DtDNS - Server configuration
'******************************************************************************

lang_m1_dtdns = " DtDNS"
lang_m2_dtdns = " Contas de editar DtDNS"
lang_m3_dtdns = " Força DtDNS UpDATE"
lang_m4_dtdns = " habilitar Log"
lang_m5_dtdns = " Ver Log"
lang_m6_dtdns = " Habilitar em CRON"
lang_m20_dtdns_spacer  = "--------------------------------"

'*** Sub-DtDNS Force DtDNS UpDATE =============================================

Const lang_dtdns_popup_title       = "DtDNS Força actualização"
lang_dtdns_popup_str               = _
"DtDNS foi atualizado manualmente"   & vbCRLF & vbCRLF &  _
"Ver log para obter detalhes." 

'******************************************************************************
' DbBackup - Server configuration
'******************************************************************************

lang_m1_db_backup = " DB Backup"
lang_m2_db_backup = " Editar Configuração de Backup DB"
lang_m3_db_backup = " Força DB-Backup"
lang_m4_db_backup = " habilitar log"
lang_m5_db_backup = " Ver Log"
lang_m6_db_backup = " Permitir Em Cron"

lang_m7_db_backup = " Selecione DBs para backup"
lang_m8_db_backup = " Restauração do backup DBs"
lang_m20_db_backup_spacer  = "--------------------------------------------"

'*** Sub-DbBackup Force DB  Backup ============================================

Const lang_dbbackup_popup_title        = "DB Força de Backup"
lang_dbbackup_popup_str                = _
"Banco de dados foi feito o backup manualmente"   & vbCRLF & vbCRLF &  _
"Ver log para obter detalhes." 

'*** Sub-DbBackup Select DBs to backup ========================================

Const lang_db_select_title               = "Selecione Databases Para backup"
Const lang_db_select_databases_legend    = "bancos de dados MySQL"
Const lang_db_select_to_backup_legend    = "Para bancos de dados de backup"
Const lang_db_select_database_to_backup  = "Selecione banco de dados para backup"
Const lang_db_select_delete_or_save      = "Excluir item de arquivo"
Const lang_db_select_clear_bt            = "claro"
Const lang_db_select_add_bt              = "adicionar >>"
Const lang_db_select_delete_bt           = "excluir"
Const lang_db_select_help_bt             = "ajuda"

Const lang_db_select_popup_title1        = "erro"
Const lang_db_select_popup_str1          = "No Database selected"

Const lang_db_select_popup_title2        = "erro"
Const lang_db_select_popup_str2          = "Banco de dados já containined na lista"

Const lang_db_select_popup_help_title          = "Selecionar bancos de dados para backup - Ajuda"
lang_db_select_popup_help_str                  = _
"Selecione banco de dados para backup:"                                    & vbCRLF & vbCRLF & _ 
"A lista de bancos de dados MySQL é mostrada à esquerda."                  & vbCRLF & _ 
"Selecione um banco de dados para backup e pressione o botão Adicionar."   & vbCRLF & _ 
"Banco de dados selecionado é armazenado em uma pasta e exibida na"        & vbCRLF & _ 
"à direita."                                                               & vbCRLF & vbCRLF & _ 
"Excluir item de arquivo:"                                                 & vbCRLF & vbCRLF & _ 
"A lista de bancos de dados a serem copiados é mostrado à direita."        & vbCRLF & _ 
"Estas são as entradas atuais salvos em um arquivo."                       & vbCRLF & _ 
"Para excluir uma entrada selecionar um banco de dados da lista e"         & vbCRLF & _ 
"clique em Excluir. "                                                      & vbCRLF & vbCRLF & _ 
"Nota: Local do arquivo"                                                   & vbCRLF & _ 
"UniServer\uni_con\db_backup\dbs_to_backup.txt"                            & vbCRLF & vbCRLF & _ 
"Este arquivo é usado por Força de backup DB"                              & vbCRLF & _ 
"e ou de backup automático usando Cron."

'*** Sub-DbBackup Restore DBs from backup =====================================

Const lang_db_restore_title               = "Restaurar banco de dados de backup"
Const lang_db_restore_databases_legend    = "Restaurar banco de dados MySQL"
Const lang_db_restore_select_name         = "Selecione banco de dados para restaurar"

Const lang_db_restore_bt                  = "restaurar"
Const lang_db_restore_help_bt             = "ajuda"

Const lang_db_restore_popup_title1        = "erro"
Const lang_db_restore_popup_str1          = "Nenhum backup do banco de dados selecionados"

Const lang_db_restore_popup_title2        = "restaurado"
Const lang_db_restore_popup_str2          = "Banco de dados foi restaurado"

Const lang_db_restore_popup_help_title    = "Restaurar banco de dados MySQL - Ajuda"
lang_db_restore_popup_help_str            = _
"Esta opção de menu permite que você restaure um banco de dados"           & vbCRLF & _ 
"um arquivo de backup."                                                    & vbCRLF & vbCRLF & _ 
"restauração:"                                                             & vbCRLF & _ 
"A lista de backups MySQL é exibido."                                      & vbCRLF & _  
"Selecione um banco de dados para restaurar e clique em Restaurar botão."  & vbCRLF & vbCRLF & _  
"Formato de arquivo: stamp_.sql dbname_time"

'******************************************************************************
' Perl - Server configuration
'******************************************************************************

lang_m1_perl = " PERL"
lang_m2_perl = " Perl painel de controle"
lang_m20_perl_spacer  = "---------------------------"

'*** Sub-Perl Force Shebang Update/Convert Win2Nix/Run Test Script ============

Const lang_perl_control_legend        = "Perl painel de controle"
Const lang_perl_force_update          = "Força Shebang Atualização"
Const lang_perl_convert_win2nix       = "converter Win2Nix"
Const lang_perl_run_test_script       = "Executar Script de Teste"

Const lang_perl_popup_title1           = "Erro Perl - Perl não está instalado!"
lang_perl_popup_str1                   = _
"Como instalar o Perl:"                                      & vbCRLF  & vbCRLF &  _                          
"Navegue até UniServer\alt_diag\install_perl pasta"          & vbCRLF &  _ 
"e siga as instruções no arquivo Read_me.txt"                & vbCRLF  & vbCRLF &  _  
"Acinzentado opções de menu, então, se tornam disponíveis."

Const lang_perl_popup_title2           = "Perl Shebang Atualizado"
lang_perl_popup_str2                   = _
"Atualizado shebang em arquivos: *.pl and *.cgi"            & vbCRLF  & vbCRLF &  _      
"Para dobras UniServer\cgi-bin e todos os sub-pastas." 

Const lang_perl_popup_title3           = "Arquivo não encontrado"
Const lang_perl_popup_str3             = "Incapaz de encontrar arquivo index.pl" 

Const lang_perl_popup_title4           = "Força Shebang Atualização"
lang_perl_popup_str4                   = _
"Scripts desenvolvidos em Perl Unix não será executado em uma máquina Windows"            & vbCRLF &  _            
"que necessitam de conversão para o formato Windows."                                     & vbCRLF  & vbCRLF &  _ 
" Esse script substitui o shebang Unix com um shebang do Windows"                         & vbCRLF &  _       
" permitindo Apache para encontrar o interpretador Perl"                                  & vbCRLF & vbCRLF &  _  
"Nota: Depois de instalar scripts de terceiros para executar cgi-bin"                     & vbCRLF &  _ 
"Força Shebang Update. Após este shebang o é atualizado automaticamente"                  & vbCRLF &  _ 
"quando os servidores são movidos. Lembre-se de usar shebang correto para novos scripts."

Const lang_perl_popup_title5           = "converter Win2Nix"
lang_perl_popup_str5                   = _
"Scripts Perl desenvolvido com o Windows não irá rodar em uma máquina Unix"            & vbCRLF &  _          
" que necessitam de conversão para um formato Unix."                                   & vbCRLF  & vbCRLF &  _   
" Este script copia todos os arquivos no cgi-bin para uma nova pasta \cgi-bin-unix\"   & vbCRLF &  _      
" scripts nesta nova pasta são convertidos a partir do Windows para o formato Unix. "  & vbCRLF  & vbCRLF &  _     
" a) Converte o fim da linha:  Dec(#10#13=>#13) Hex 0D0A to 0A"                        & vbCRLF &  _ 
"                              CR+LF to LF"                                            & vbCRLF &  _ 
" b) Substitui o Windows shebang com Unix shebang"                             

Const lang_perl_popup_title6           = "Executar Script de Teste"
lang_perl_popup_str6                   = _
"Uma instalação padrão do servidor Uniform contém página de teste index.pl "                  & vbCRLF &  _ 
"localizado na UniServer\cgi-bin. Isto pode ser executado clicando no"                        & vbCRLF &  _ 
"Botão Executar Script de Teste."                                                             & vbCRLF  & vbCRLF &  _ 
"Nota: Esta página pode ser substituído por seu próprio arquivo index.pl.  "                  & vbCRLF &  _ 
"Botão Executar Script de Teste, em seguida, torna-se um atalho para executar o aplicativo."


'###-END-###


