resource "scalr_workspace" "ws" {
  name = "test3"
  organization = "org-sgpvfvrkj5ao2j0"
  
  vcs_repo {
    identifier = "mermoldy/terraform-google-instance"
    oauth_token_id = "vcs-stplc9ecmtv02j8"
  }
}
