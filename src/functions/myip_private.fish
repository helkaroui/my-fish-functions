function myip_private -d "Get private IP address "
    hostname -I | awk '{print $1}'
end