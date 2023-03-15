#!/bin/bash

THIS_DIR="$( cd "$(dirname ${BASH_SOURCE[0]})" && pwd)"
# az login --use-device-code
# az account set --subscription "a6dbae07-f1f7-49da-ab9d-4dab678a37a8"

# "a6dbae07-f1f7-49da-ab9d-4dab678a37a8" is the one can repro
# "8759744f-2170-4c57-b185-a3e9167eb496" is another sub
subscriptions=("a6dbae07-f1f7-49da-ab9d-4dab678a37a8" "8759744f-2170-4c57-b185-a3e9167eb496")
regions=("eastus" "westeurope" "southeastasia" "uksouth")
# regions=("eastus")


ahareproscript="${THIS_DIR}/aharepro.sh"
echo "# starting validation from here:" > $ahareproscript
cat <<EOF >> $ahareproscript
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
biIqIF1dIDsgdGhlbgogICAgZWNobyAnIycgJHRvdGFsICcgc3VjY2VlZGVkJwogIGVsc2UKICAg
IGVjaG8gJ1tGQVRBTF0gc2NyaXB0IGJ1Zy4gaGVyZSBpcyBvdXRwdXQ6ICcKICAgIGVjaG8gJG8K
ICAgIGVjaG8KICAgIGV4aXQKICBmaQogIGlmIFtbICRmYWlsdXJlX2RlY3J5cHRpb24gLWd0IDUg
fHwgJGZhaWx1cmVfbm9fY2VydCAtZ3QgNSB8fCAkdG90YWwgLWd0IDEwMDAgXV0gOyB0aGVuCiAg
ICBlY2hvCiAgICBlY2hvICc9PT09PSBURVNUIFJFU1VMVFMgPT09PT09PScKICAgIGVjaG8gJ2Rl
Y3J5cHRpb24gZmFpbGVkIG9yIGJhZCByZWNvcmQgbWFjOiAnICRmYWlsdXJlX2RlY3J5cHRpb24K
ICAgIGVjaG8gJ25vIHBlZXIgY2VydGlmaWNhdGUgYXZhaWxhYmxlIHdpdGhvdXQgZGV0YWlsZWQg
ZXJyb3I6ICcgJGZhaWx1cmVfbm9fY2VydAogICAgZWNobyAnVG90YWw6ICcgJHRvdGFsICcgQ29t
bWFuZDogb3BlbnNzbCBzX2NsaWVudCAtY29ubmVjdCAnICR1cmwgJzo0NDMgIC12ZXJpZnlfcmV0
dXJuX2Vycm9yIDw8PCAiUSIgMj4mMScKICAgIGVjaG8KICAgIGV4aXQKICBmaQogICMgVXNlIHNs
ZWVwIHRvIHdhaXQgZm9yIDEgc2Vjb25kIGJlZm9yZSByZXBlYXRpbmcgdGhlIGxvb3AKICBzbGVl
cCAxCiAgZWNobyAtbiAnPicKZG9uZQplY2hv" | base64 -d > ./repro.sh
EOF
for region in ${regions[@]}; do
    # clean up
    for subscription in ${subscriptions[@]}; do
        az account set --subscription $subscription
        # echo "deleting resource group tlsrepro$region"
        # az group delete --name "tlsrepro$region" --yes --no-wait || true
        echo "creating resource group tlsrepro$region"
        az group create --name "tlsrepro$region" --location $region || true
        for i in {1..5}; do
            vmname="tlsrepro$regionvmname$i"
            echo "creating vm $vmname in $region"
            az vm create \
                --resource-group "tlsrepro$region" \
                --name $vmname \
                --image debian \
                --admin-username azureuser \
                --ssh-key-values ${THIS_DIR}/andliu-id.pub ${THIS_DIR}/qian-id.pub \
                --size Standard_D2s_v3 \
                --public-ip-sku Standard || true
        done
        # get the 
        echo "# subscription $subscription" >> $ahareproscript
        echo "# region $region" >> $ahareproscript
        az network public-ip list --query "[?resourceGroup=='tlsrepro$region'].ipAddress" -o tsv | xargs -L 1 -I {} echo scp ./repro.sh azureuser@{}:~ >> $ahareproscript
        # ssh username@remote_machine_ip "bash /path/to/script/script.sh"
        echo "echo \"verifying vm in $subscription, $region\"" >> $ahareproscript
        az network public-ip list --query "[?resourceGroup=='tlsrepro$region'].ipAddress" -o tsv | xargs -L 1 -I {} echo "ssh azureuser@{} 'chmod +x ~/repro.sh && ~/repro.sh'" >> $ahareproscript
    done
done

