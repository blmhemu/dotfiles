function set_consul_token --description 'Set consul token'
    set -gx CONSUL_HTTP_TOKEN "$(vault read consul/creds/mgmt -format=json | jq -r '.data.token')"
end
