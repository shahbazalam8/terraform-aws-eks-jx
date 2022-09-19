autoUpdate:
  enabled: false
  schedule: ""
terraform: true
cluster:
  clusterName: "${cluster_name}"
  environmentGitOwner: ""
  provider: eks
  region: "${region}"
  registry: "${registry}"
  project: "${project}"
%{ if is_jx2 }
gitops: true
%{ endif }
ingress:
  domain: "${domain}"
  ignoreLoadBalancer: ${ignoreLoadBalancer}
  externalDNS: ${enable_external_dns}
  tls:
    email: "${tls_email}"
    enabled: ${enable_tls}
    production: ${use_production_letsencrypt}
    %{ if tls_secret_name != ""}secretName: ${tls_secret_name}%{ endif }
