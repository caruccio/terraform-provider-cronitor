provider "cronitor" {
  api_key = ""
}

resource "cronitor_heartbeat_monitor" "test" {
  name = "test"

  notifications {
    slack = ["https://webhook.url"]
  }

  rule {
    value = "* * * * * *"
  }
}

