provider "github" {
  token = var.token
}

resource "github_repository" "django-project-template" {
  name = "django-project-template"
  description = "Django project template"
  has_issues = true
  has_projects = false
  has_wiki = false
  is_template = true
  license_template = "MIT"
  topics = ["django", "docker"]
  vulnerability_alerts = true
  # TODO: add a way to setup https://docs.github.com/en/rest/reference/repos#enable-automated-security-fixes
}
