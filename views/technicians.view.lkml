view: technicians {
  sql_table_name: scooters.technicians ;;
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_x_coord {
    type: number
    sql: ${TABLE}.last_x_coord ;;
  }

  dimension: last_y_coord {
    type: number
    sql: ${TABLE}.last_y_coord ;;
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
      last_x_coord,
      last_y_coord,
      level,
      first_name,
      last_name,
      status,
      phone_number,
      email
    ]
  }
}
