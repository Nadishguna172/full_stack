    1. Open your terminal on the local system and generate an SSH key pair : ssh-keygen -t rsa -b 2048
    2. Save the keys to the default location (~.ssh/id_rsa)
    3. Copy the public key to the remote system: ssh-copy-id username@remote_ip_address
    4. Create a shell script on the remote system 
    5. Echo “hello SSH” and save it as a shell script
    6. Run the shell script from your local system using SSH: ssh username@remote_ip_address 'bash ~/test_script.sh'
