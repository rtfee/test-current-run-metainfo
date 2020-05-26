resource "scalr_workspace" "ws" {
  name = "test2"
  organization = "org-sgpvfvrkj5ao2j0"
  
  vcs_info = {
    identifier = "mermoldy/terraform-google-instance"
    oauth_token_id = "vcs-stplc9ecmtv02j8"
  }
}
