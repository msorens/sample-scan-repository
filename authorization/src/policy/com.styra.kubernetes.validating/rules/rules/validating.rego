package policy["com.styra.kubernetes.validating"].rules.rules


enforce[decision] {
  data.library.v1.kubernetes.admission.network.v1.ingress_host_conflict[message]
  decision := {
    "messageX": message,
    "allowed": false,
  }
}
