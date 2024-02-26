function set_vault_token --description 'Sets root token in VAULT_TOKEN'
    set -gx VAULT_TOKEN $(bw get item "Homelab Hashicorp Vault" | jq -r '.fields[] | select(.name == "Root token").value')
end
