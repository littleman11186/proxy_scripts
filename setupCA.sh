make-cadir ~/openvpn-ca
cd ~/openvpn-ca

# setups for CA
tee -a ~/vars < EOF
export KEY_COUNTRY="US"
export KEY_PROVINCE="MD"
export KEY_CITY="Silver Spring"
export KEY_ORG="My House"
export KEY_EMAIL= class="hljs-string">"littleman11186@gmail.com"
export KEY_OU="Proxy"

# X509 Subject Field
export KEY_NAME="Pirates"
EOF

source ~/vars

# builds certificate of authority
./clean-all
./build-ca --batch

