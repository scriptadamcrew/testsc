#!/bin/bash                                                                             
red="\e[1;31m"                                                                          
green="\e[0;32m"                                                                        
NC="\e[0m"                                                                              
clear
status="$(systemctl show ssh.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSH               : SSH Service is "$green"running"$NC""                  
else                                                                                    
echo -e " SSh               : SSH Service is "$red"not running (Error)"$NC""        
fi
status="$(systemctl show stunnel4.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Stunnel           : Stunnel Service is "$green"running"$NC""                  
else                                                                                    
echo -e " Stunnel           : Stunnel Service is "$red"not running (Error)"$NC""        
fi                                                                                
status="$(systemctl show dropbear.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " DropBear          : DropBear Service is "$green"running"$NC""                  
else                                                                                    
echo -e " DropBear          : DropBear Service is "$red"not running (Error)"$NC""        
fi                                                                                      
status="$(systemctl show v2ray@none.service --no-page)"                                 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " V2ray Non TLS     : V2ray Non TLS Service is "$green"running"$NC""              
else                                                                                    
echo -e " V2ray Non TLS     : V2ray Non TLS Service is "$red"not running (Error)"$NC""    
fi                                                                                      
status="$(systemctl show v2ray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " V2ray TLS         : V2ray TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " V2ray TLS         : V2ray TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show v2ray@vless.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vless TLS         : Vless TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vless TLS         : Vless TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show v2ray@vnone.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vless Non TLS     : Vless Non TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vless Non TLS     : Vless Non TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show trojan --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Trojan            : Trojan Service is "$green"running"$NC""                
else                                                                                    
echo -e " Trojan            : Trojan Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show squid.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Squid             : Squid Service is "$green"running"$NC""                
else                                                                                    
echo -e " Squid             : Squid Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show openvpn.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Openvpn           : Openvpn Service is "$green"running"$NC""                
else                                                                                    
echo -e " Openvpn           : Openvpn Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show wg-quick@wg0 --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Wireguard         : Wireguard Service is "$green"running"$NC""                
else                                                                                    
echo -e " Wireguard         : Wireguard Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show ssrmu --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSR               : SSR Service is "$green"running"$NC""                
else                                                                                    
echo -e " SSR               : SSR Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show shadowsocks-libev.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Shadowsocks       : Shadowsocks Service is "$green"running"$NC""                
else                                                                                    
echo -e " Shadowsocks       : Sadhowsocks Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show nginx.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Nginx             : Nginx Service is "$green"running"$NC""                
else                                                                                    
echo -e " Nginx             : Nginx Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show ssh-ohp.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OHP-SSH           : OHP-SSH Service is "$green"running"$NC""
else
echo -e " OHP-SSH           : OHP-SSH is "$red"not running (Error)"$NC""
fi
status="$(systemctl show dropbear-ohp.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OHP-Dropbear      : OHP-Dropbear Service is "$green"running"$NC""
else
echo -e " OHP-Dropbear      : OHP-Dropbear is "$red"not running (Error)"$NC""
fi
status="$(systemctl show openvpn-ohp.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OHP-OVPN          : OHP-OpenVPN Service is "$green"running"$NC""
else
echo -e " OHP-OVPN          : OHP-OpenVPN is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ws-ssh.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " WS-OpenSSH        : WS-OpenSSH Service is "$green"running"$NC""
else
echo -e " WS-OpenSSH        : WS-OpenSSH is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ws-ovpn.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " WS-OpenOvpn       : WS-OpenOvpn Service is "$green"running"$NC""
else
echo -e " WS-OpenOvpn       : WS-OpenOvpn is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ws-dropbear.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " WS-Dropbear       : WS-Dropbear Service is "$green"running"$NC""
else
echo -e " WS-Dropbear       : WS-Dropbear is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ws-stunnel.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " WS-Stunnel        : WS-Stunnel Service is "$green"running"$NC""
else
echo -e " WS-Stunnel        : WS-Stunnel is "$red"not running (Error)"$NC""
fi
