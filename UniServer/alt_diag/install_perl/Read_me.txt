###############################################################################
# File name: Read_me.txt
# Created By: The Uniform Server Development Team
# V 1.0 13-8-2011
###############################################################################

 ActivePerl is considered to be the de facto standard, however the ActiveState
 Community License restricts the way ActivePerl can be distributed. This is
 inconsistent with open source software, so an ActivePerl plugin is unavailable.
 Nevertheless you are free to download, install and use a personal copy of
 ActivePerl Community Edition. For portability it first must be installed and
 then integrated into The Uniform Server’s file structure.

 This process is tedious because ActivePerl is distributed only in msi format.
 Although files are extractable without actually performing an installation
 they do require relocating. Uniform Server automates the installation process
 as explained below.

 -------------------
 Download ActivePerl
 -------------------
 First download latest version of ActivePerl Community Edition from
 ActiveState http://www.activestate.com/activeperl/downloads

 * Current version is 5.12.3.1204 file:
   (ActivePerl-5.12.3.1204-MSWin32-x86-294330.msi)
 * Save downloaded file to folder UniServer\alt_diag\install_perl

  Note: If you wish, you can save a copy of the download file. On
	completing the installation, the one in folder
        UniServer\alt_diag\install_perl is deleted to save space.

 -------------------
 Extract and Install
 -------------------
 To extract and install, double click on the batch file:
 UniServer\alt_diag\install_perl\extract_install_perl.bat

 For a fresh install, the process is automatic and does not require any
 user input.

 If ActivePerl is already installed you will be prompted to delete this and
 install new version. Press enter to delete and install. Entering anything
 other than "Yes" terminates installation.

 --------------------
 Note: shebang update
 --------------------
 After Installation you will need to manually force a shebang update.

 From UniController, run the Perl control panel:

 a) Server Configuration > Perl > Perl control panel
 b) Click "Force Shebang Update" button.

------------------------------------ End --------------------------------------

 

