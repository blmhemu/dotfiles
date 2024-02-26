function set_grafana_token --description 'Sets grafana token environment variable'
    set -gx GRAFANA_CLOUD_ACCESS_POLICY_TOKEN $(bw get item "Grafana" | jq -r '.fields[] | select(.name == "Secret ID").value')
end
