## first you should install these packages
    apt install samba winbind libpam-winbind libnss-winbind krb5-user krb5-config 
## Now you need to write your Kerberos domain with capital letters then you should write your AD server name with capital letters
    for example :
    kerberos realm : EXAMPLE.COM
    kerberos server name : DC.EXAMPLE.COM
## clone the project and run these tree script
    https://github.com/aliyousefi84/integrate-samba-with-AD-.git
    chmod u+x smb.sh  && bash smb.sh
    chmod u+x nsswitch.sh && bash nsswitch.sh
    chmod u+x dns.sh && bash dns.sh
## Now you need to get a TGT ticket from Kerberos
    kinit administrator
      # enter your AD password and get your ticket if it's not work reboot the system and try again 
## you can see your TGT ticket with klist command
    klist
      # your ceredential
## so you can join your system with command
    net ads join -U administrator
      # enter your administrator password AD domain admin
   systemctl restart smb smbd nmbd winbind 
## Now you can see your domain user with this command
    wbinfo -u
      # list your domain user 
## you can switch user to your domain user 
    su administrator
    

    
    
    
