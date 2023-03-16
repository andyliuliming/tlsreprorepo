# starting validation from here:
echo "IyEvYmluL2Jhc2gKCnVybD0iYXBpLnN0b3Jlc2hpcHBlcnMuY29tIgppZiBbICQjIC1sdCAxIF07
IHRoZW4KICBlY2hvICI9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PSIKICBlY2hvICJZb3UgY2FuIHByb3ZpZGUgYSB1cmwgdG8gdGVzdC4gVXNh
Z2U6ICR7MH0gPHVybD4iCiAgZWNobyAnVXNpbmcgZGVmYXVsdDogJyAkdXJsCiAgZWNobyAiPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0iCiAg
ZWNobwplbHNlCiAgdXJsPSQxCmZpCiMgVXNlIGFuIGluZmluaXRlIHdoaWxlIGxvb3AKZmFpbHVy
ZV9kZWNyeXB0aW9uPTAKZmFpbHVyZV9ub19jZXJ0PTAKdG90YWw9MAp3aGlsZSB0cnVlOyBkbwog
IHRvdGFsPSQoKCR0b3RhbCsxKSkKICAjbz0kKCBjdXJsIC1JdiAiJHVybCIgMj4mMSApCiAgbz0k
KCBvcGVuc3NsIHNfY2xpZW50IC1jb25uZWN0ICIkdXJsIjo0NDMgLXNlcnZlcm5hbWUgIiR1cmwi
ICAtdmVyaWZ5X3JldHVybl9lcnJvciA8PDwgJ1EnIDI+JjEgKQogIGlmIFtbICRvID09ICoiZGVj
cnlwdGlvbiBmYWlsZWQgb3IgYmFkIHJlY29yZCBtYWMiKiBdXSA7IHRoZW4KICAgIGZhaWx1cmVf
ZGVjcnlwdGlvbj0kKCgkZmFpbHVyZV9kZWNyeXB0aW9uKzEpKQogICAgZWNobyAnIycgJHRvdGFs
ICcgRkFJTEVEIGR1ZSB0byBkZWNyeXB0aW9uIGZhaWxlZCBvciBiYWQgcmVjb3JkIG1hYy4nCiAg
ICBlY2hvICRvCiAgZWxpZiBbWyAkbyA9PSAqIm5vIHBlZXIgY2VydGlmaWNhdGUgYXZhaWxhYmxl
IiogXV0gOyB0aGVuCiAgICBmYWlsdXJlX25vX2NlcnQ9JCgoJGZhaWx1cmVfbm9fY2VydCsxKSkK
ICAgIGVjaG8gJyMnICR0b3RhbCAnIEZBSUxFRCBkdWUgdG8gbm8gcGVlciBjZXJ0aWZpY2F0ZSBh
dmFpbGFibGUuJwogICAgZWNobyAkbwogIGVsaWYgW1sgJG8gPT0gKiJDZXJ0aWZpY2F0ZSBjaGFp
biIqIF1dIDsgdGhlbgogICAgZWNobyAtbiAnUycKICBlbHNlCiAgICBlY2hvICdbRkFUQUxdIHNj
cmlwdCBidWcuIGhlcmUgaXMgb3V0cHV0OiAnCiAgICBlY2hvICRvCiAgICBlY2hvCiAgICBleGl0
CiAgZmkKICBpZiBbWyAkZmFpbHVyZV9kZWNyeXB0aW9uIC1ndCA1IHx8ICRmYWlsdXJlX25vX2Nl
cnQgLWd0IDUgfHwgJHRvdGFsIC1ndCAxMDAwIF1dIDsgdGhlbgogICAgZWNobwogICAgZWNobyAn
PT09PT0gVEVTVCBSRVNVTFRTID09PT09PT0nCiAgICBlY2hvICdkZWNyeXB0aW9uIGZhaWxlZCBv
ciBiYWQgcmVjb3JkIG1hYzogJyAkZmFpbHVyZV9kZWNyeXB0aW9uCiAgICBlY2hvICdubyBwZWVy
IGNlcnRpZmljYXRlIGF2YWlsYWJsZSB3aXRob3V0IGRldGFpbGVkIGVycm9yOiAnICRmYWlsdXJl
X25vX2NlcnQKICAgIGVjaG8gJ1RvdGFsOiAnICR0b3RhbCAnIENvbW1hbmQ6IG9wZW5zc2wgc19j
bGllbnQgLWNvbm5lY3QgJyAkdXJsICc6NDQzICAtdmVyaWZ5X3JldHVybl9lcnJvciA8PDwgIlEi
IDI+JjEnCiAgICBlY2hvCiAgICBleGl0CiAgZmkKICAjIFVzZSBzbGVlcCB0byB3YWl0IGZvciAx
IHNlY29uZCBiZWZvcmUgcmVwZWF0aW5nIHRoZSBsb29wCiAgc2xlZXAgMC4xCmRvbmUKZWNobw==" | base64 -d > ./repro.sh
rm -r ./reprologs
mkdir -p ./reprologs
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region uksouth
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.108.173.127:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.34.93:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.105.42.107:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.104.214.106:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.77.82.45:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.77.83.105:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.77.84.144:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.77.86.221:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.104.197.110:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, uksouth"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.108.173.127 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.108.173.127.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.34.93 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.34.93.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.105.42.107 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.105.42.107.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.104.214.106 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.104.214.106.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.77.82.45 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.77.82.45.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.77.83.105 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.77.83.105.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.77.84.144 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.77.84.144.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.77.86.221 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.77.86.221.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.104.197.110 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.104.197.110.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region uksouth
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.87.129:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.243.207:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@172.166.152.81:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.83.158:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.244.235:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.246.96:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.84.75:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.105.42.205:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.77.85.70:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@172.166.155.209:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.84.170:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.108.7.154:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.142.227.67:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.142.230.139:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.24.110:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.24.60:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.18.63:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.24.26:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.21.151:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.24.206:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.23.189:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.87.191:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.108.2.185:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.246.8:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.81.92:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.242.30:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.242.102:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.247.60:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.145.86.102:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.246.243:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, uksouth"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.87.129 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.87.129.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.243.207 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.243.207.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@172.166.152.81 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/172.166.152.81.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.83.158 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.83.158.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.244.235 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.244.235.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.246.96 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.246.96.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.84.75 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.84.75.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.105.42.205 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.105.42.205.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.77.85.70 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.77.85.70.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@172.166.155.209 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/172.166.155.209.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.84.170 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.84.170.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.108.7.154 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.108.7.154.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.142.227.67 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.142.227.67.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.142.230.139 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.142.230.139.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.24.110 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.24.110.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.24.60 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.24.60.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.18.63 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.18.63.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.24.26 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.24.26.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.21.151 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.21.151.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.24.206 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.24.206.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.23.189 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.23.189.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.87.191 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.87.191.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.108.2.185 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.108.2.185.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.246.8 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.246.8.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.81.92 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.81.92.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.242.30 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.242.30.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.242.102 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.242.102.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.247.60 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.247.60.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.145.86.102 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.145.86.102.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.246.243 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.246.243.log'" &
