project_name: "ravi_pop"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

remote_dependency: looker_period_control {
  url: "https://github.com/Cold-Bore-Capital/looker_period_control.git"
  # Find the latest tag hash here https://github.com/Cold-Bore-Capital/looker_period_control/tags
  ref: "v1.1.3"
  override_constant: database_type {
    value: "bigquery"
  }
}
