resource "datadog_dashboard_json" "dashboard" {

  dashboard  = file(format("%s/%s", path.module, each.key))
  for_each = fileset(path.module, "jsons/*.json.modified")

}
