# NOTE: It's an extremely bad idea to put a public key in plain text within your puppet code.
# This is provided as a convenient way of setting the private key for training purposes.
# In an non-training context you would probably generate this key by hand.

class profile::ssh_private_key {

$private_key = @("PRIVKEY"/L)
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAu5gmgKtJuGj07JQrR6s2t/DpnpOEG/bRujCq/wmcaJSsRb9w
6CdnAhx1naSjyJgbySPWTPNdP62Pd1AoqVLv+iXyvBRyOzVUiBoJFBdAMeOnBI3Y
quxvqF3WytnYb+yoG3/4FVLs4LtBDg8wxU0bs0dsXxCtORn3u3gSUiMnXd+RrO/2
kqxv32toNoMbzRWfNdIzhLDcxo4AGkzIYoHrCzE2X2W6MXxtvH8E4IUR0B2zfrKf
GSVKJX0e0utj+X6NiXz/0t1Wt/a4iwMlNqx5hl5YFEp7Ya0oCz90eQFK7Uwgsun+
zIXznZJMe15NycB/aTqzrPP7YnVv81dBRn09kwIDAQABAoIBAQCVhut5uA5k7VP8
lwYAdFqDN4Yfnhm5aH03Wb+S1ghT292NItFOWsnihujBJRBfvc63/ta8M2dqcF9g
jQY8IR2jWEgo3mtHAnVEnuwJlZbXrUvdd2ryos9FdrbUrdu1Kv+8G76U0Kp7Xwa1
vCn1ukaQGigphlNspmQui8Ces+KXEVWDYo+xVKXyCkydHS5Z1JXEXXQdWxLpH/4G
73FYyJnLa4I4pJ1CG1dhm0blWh6mSO/yWm6H1XShA/ro0GhACdBittzklMyhPEUI
l6g1QXXQy3ap+76KNfTSSkeFC3XfvacnRSXEqcEVLU0CLbIfOhsTKDw3YdeipUzN
paktSM1RAoGBAOWNLkMA4loHAup8Rixp0+UQqVrsJptAR39d9A4NEQ+yAYCXAgPJ
D1qdFboURQdZgIEW99zvVMzDMhU0ErA2Fm/f9Vo/C5h3xb8fnLLYys8vDy0XMp5f
xPm3av1guE8Io32EoVaNNBJA1qFKvDgNqvGLg/8hQa3PbrsLOKTqo6klAoGBANE1
aEdpqUYulHdhDptlPegWxmtMM6aBmwYJ4J8VxZsUyVtf+OOCiyhJ8hifN9FM2k6M
VeOVnnEt1Wce9modPDk9j//Znac1LhdlwFIYrRsI+xhW6Qe4weliSo/bMtkfQ1Ot
j9vIkdhFmaNA49mg7vmL9GXN0NQ94LWyK8UWnRpXAoGAGEM+44ghZKCfF0fBZwpc
gjarn9ecEQbPR9AXbrDE3+LRs9TCOsIypEI8PKnNzgQQyBQ0aJ7HWMk87u7NFuDw
qCyE02AciqYGObhOqLyvWwy/TuXHzOOUf0x6u4NQl9Hy7d5p6ysLmO5PgUbT9BzF
t7gmYH4UYhmtu4lpGE1QtR0CgYB9UFheLlROzafwuhpdyo8CbmH783Ec05VgUJpT
sF7lPdY+/YXAAXoJcAGr7fMpU7eQRU9NO1nkwWeKlWlUtp5USyPuRRPCDIDHUxOY
GV/XSdHeCnEbRvggK9gtw0b591gEz3nUVJfHzCjzOPNCcLu0jrieImJsP4RSUZ8W
Ny1zkQKBgQDJBUPXqUhShKKK+lIC2B8n/U6jtzxj+xFMeonAyADtZI0ILZKulqxn
M15GKHrEvMYVcFFyACgyNQADxQoMDY9kXYOWjSMsnjunYi0SmYz5VbC9eyzqYn6d
S6yNc+jqcwLFucQBJRmQfcuQE9EoDf61c/NolQmD7QPT/xBVRi/q/w==
-----END RSA PRIVATE KEY-----
|PRIVKEY

  file { '/root/.ssh/id_rsa':
    ensure  => file,
    content => $private_key,
    mode => '0600',
  }
}
