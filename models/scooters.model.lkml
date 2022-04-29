connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view"

datagroup: scooters_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: scooters_default_datagroup

explore: scooters {}

explore: technicians {}
