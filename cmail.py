
import smtplib
from smtplib import SMTP
from email.message import EmailMessage
def sendmail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('mahimaplatinum4@gmail.com','vbwg nfsz iosu jedb')
    msg=EmailMessage()
    msg['FROM']='mahimaplatinum4@gamil.com'
    msg['TO']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.close()


