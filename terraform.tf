terraform {
  cloud {
    organization = "zim-mmd"
    workspaces {
      name = "mmd-zimkha"
    }
  }
}