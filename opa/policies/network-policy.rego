package kubernetes.admission

deny[msg] {
  input.kind.kind == "Pod"
  container := input.request.object.spec.containers[_]
  not startswith(container.image, "docker.io/korupon/")
  msg = sprintf("Container image %v is not allowed", [container.image])
}
# Placeholder for opa/policies/network-policy.rego
