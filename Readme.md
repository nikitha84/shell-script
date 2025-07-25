1. user id should be 0
2.if user id not equal to zero,
3. then error"please run with root access" & exit
4. if  root user  ,contineue


Smed maile using linux:
Install Postfix, the SASL authentication framework, and mailx.
yum -y install postfix cyrus-sasl-plain mailx

profix-->hit gmail
cyrus-sasl-plai  --> set athentication
mailx  --> command to send mail 
Restart Postfix to detect the SASL framework.
systemctl restart postfix 

Start Postfix on boot
systemctl enable postfix 

Open the /etc/postfix/main.cf file.
vim /etc/postfix/main.cf 

append the following into the file at the end
relayhost = [smtp.gmail.com]:587
smtp_use_tls = yes
smtp_sasl_auth_enable = yes
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_sasl_security_options = noanonymous
smtp_sasl_tls_security_options = noanonymous

Configure Postfix SASL Credentials
Add the Gmail credentials for authentication. Create a "/etc/postfix/sasl_passwd" file

touch /etc/postfix/sasl_passwd  
Add the following line to the file:

vi /etc/postfix/sasl_passwd
[smtp.gmail.com]:587 xyz:AppPassword
Note: xyz is from xyz@gmail.com, password_app is from google management app password

Create a Postfix lookup table from the sasl_passwd text file by running the following command:
postmap /etc/postfix/sasl_passwd

Sending mail Run the following command to send mail:
echo "This is a test mail & Date $(date)" | mail -s "message" info@joindevops.com
