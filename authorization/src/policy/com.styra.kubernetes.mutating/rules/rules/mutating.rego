package policy["com.styra.kubernetes.mutating"].rules.rules

enforce[decision] {
  #title: add dummy label
  input.request.object.kind == "Pod"
  decision := {
    "allowed": true,
    "message": "adding a dummy label",
    "patch": [
      {
        "op": "add",
        "path": "/metadata/labels/dummy",
        "value": "test"
      }
    ]
  }
}
