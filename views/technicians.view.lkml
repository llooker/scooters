view: technicians {
  sql_table_name: scooters.technicians ;;
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_lng_coord {
    hidden: yes
    type: number
    sql: ${TABLE}.last_lng_coord ;;
  }

  dimension: last_lat_coord {
    hidden: yes
    type: number
    sql: ${TABLE}.last_lat_coord ;;
  }

  dimension: coordinate {
    type: location
    sql_longitude: ${last_lng_coord} ;;
    sql_latitude: ${last_lat_coord} ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  set: detail {
    fields: [
      id,
      last_lng_coord,
      last_lat_coord,
      level,
      first_name,
      last_name,
      status,
      phone_number,
      email
    ]
  }
}
