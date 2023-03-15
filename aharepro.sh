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
# region canadaeast
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.220.64.71:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.220.71.217:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.104.138.216:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.104.139.190:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.104.143.36:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, canadaeast"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.220.64.71 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.220.64.71.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.220.71.217 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.220.71.217.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.104.138.216 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.104.138.216.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.104.139.190 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.104.139.190.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.104.143.36 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.104.143.36.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region canadaeast
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@40.86.216.95:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.229.123.87:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@40.69.98.68:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.220.70.113:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.220.69.176:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, canadaeast"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@40.86.216.95 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/40.86.216.95.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.229.123.87 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.229.123.87.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@40.69.98.68 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/40.69.98.68.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.220.70.113 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.220.70.113.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.220.69.176 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.220.69.176.log'" &
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region eastus
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.169.241.1:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.142.47.107:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.25.110.41:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.232.137.212:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@74.235.39.70:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, eastus"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.169.241.1 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.169.241.1.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.142.47.107 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.142.47.107.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.25.110.41 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.25.110.41.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.232.137.212 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.232.137.212.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@74.235.39.70 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/74.235.39.70.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region eastus
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.121.208.173:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.188.70.133:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.188.70.101:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.146.44.122:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@52.146.44.113:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, eastus"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.121.208.173 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.121.208.173.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.188.70.133 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.188.70.133.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.188.70.101 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.188.70.101.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.146.44.122 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.146.44.122.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@52.146.44.113 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/52.146.44.113.log'" &
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region eastasia
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.69.102:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.67.4:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.68.148:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.68.159:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, eastasia"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.69.102 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.69.102.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.67.4 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.67.4.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.68.148 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.68.148.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.68.159 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.68.159.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region eastasia
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.70.43:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.68.156:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.67.64:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.24.67.214:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, eastasia"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.70.43 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.70.43.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.68.156 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.68.156.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.67.64 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.67.64.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.24.67.214 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.24.67.214.log'" &
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region westeurope
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.229.135.39:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.105.184.244:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.105.189.176:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.105.189.70:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.160.216.100:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, westeurope"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.229.135.39 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.229.135.39.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.105.184.244 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.105.184.244.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.105.189.176 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.105.189.176.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.105.189.70 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.105.189.70.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.160.216.100 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.160.216.100.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region westeurope
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.160.78.209:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@108.143.41.225:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@108.143.43.10:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.160.78.8:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@108.143.43.79:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, westeurope"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.160.78.209 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.160.78.209.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@108.143.41.225 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/108.143.41.225.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@108.143.43.10 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/108.143.43.10.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.160.78.8 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.160.78.8.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@108.143.43.79 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/108.143.43.79.log'" &
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region southeastasia
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@4.193.81.218:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@4.193.106.106:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@4.193.106.139:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@4.193.108.133:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, southeastasia"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@4.193.81.218 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/4.193.81.218.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@4.193.106.106 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/4.193.106.106.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@4.193.106.139 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/4.193.106.139.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@4.193.108.133 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/4.193.108.133.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region southeastasia
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, southeastasia"
# subscription a6dbae07-f1f7-49da-ab9d-4dab678a37a8
# region uksouth
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.30.214:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.132.35.62:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@51.132.34.203:~
echo "verifying vm in a6dbae07-f1f7-49da-ab9d-4dab678a37a8, uksouth"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.30.214 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.30.214.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.132.35.62 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.132.35.62.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@51.132.34.203 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/51.132.34.203.log'" &
# subscription 8759744f-2170-4c57-b185-a3e9167eb496
# region uksouth
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.98.179:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.254.97.14:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.252.63:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.252.168:~
scp -o 'StrictHostKeyChecking no' ./repro.sh azureuser@20.0.252.170:~
echo "verifying vm in 8759744f-2170-4c57-b185-a3e9167eb496, uksouth"
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.98.179 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.98.179.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.254.97.14 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.254.97.14.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.252.63 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.252.63.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.252.168 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.252.168.log'" &
bash -c "ssh -o 'StrictHostKeyChecking no' azureuser@20.0.252.170 'chmod +x ~/repro.sh && ~/repro.sh' > './reprologs/20.0.252.170.log'" &
