resource "datadog_monitor_json" "monitor" {

  monitor  = file(format("%s/%s", path.module, each.key))
  for_each = fileset(path.module, "jsons/*.json.modified")

}
