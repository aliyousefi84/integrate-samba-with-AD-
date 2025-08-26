#!/bin/bash                                                                                
if [ $EUID -ne 0  ];                                                                        
then                                                                                        
        echo "ERROR: please run as root"                                                    
        exit 1                                                                              
fi                                                                                          
global()                                                                                    
{                                                                                           
                                                                                            
cp /etc/samba/smb.conf /etc/samba/smb.conf.back                                             
rm /etc/samba/smb.conf  && touch /etc/samba/smb.conf                                        
read -p "please enter your realm and your first word off your realm (word should be capital)
: " realm fw                                                                                
echo -e "[global]\nWORKGROUP = $fw\nrealm = $realm\nsecurity = ads\nidmap config * : range = 100000-199999\nwinbind use default domain = true\nwinbind offline logon = false\ntemplate shell = /bin/bash\ntemplate homedir = /home/%U " >> /etc/samba/smb.conf            
                                                                                            
                                                                                           
                                                                                            
}                                                                                          
global
