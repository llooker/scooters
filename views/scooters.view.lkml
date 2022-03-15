view: scooters {
  sql_table_name: `scooters.scooters`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: days_since_last_service {
    type: number
    sql: ${TABLE}.days_since_last_service ;;
  }

  dimension: last_reported_battery {
    type: number
    sql: ${TABLE}.last_reported_battery ;;
  }

  dimension: last_lng_coord {
    type: number
    sql: ${TABLE}.last_lng_coord ;;
    value_format:"##.####"
  }

  dimension: last_lat_coord {
    type: number
    sql: ${TABLE}.last_lat_coord ;;
    value_format:"##.####"
  }

  dimension: coordinate {
    type: location
    sql_longitude: ${last_lng_coord} ;;
    sql_latitude: ${last_lat_coord} ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sum_of_revenue {
    type: number
    sql: ${TABLE}.sum_of_revenue ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
