package kubernetes.admission

deny[msg] {
  input.review.object.spec.containers[_].image == "nginx:latest"
  msg := "Using 'latest' tag is not allowed."
}
