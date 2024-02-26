function set_nomad_token --description 'Sets nomad token'
    set -gx NOMAD_TOKEN $(bw get item "Nomad" | jq -r '.fields[] | select(.name == "Secret ID").value')
end
