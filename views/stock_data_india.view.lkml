view: stock_data_india {
  sql_table_name: `ravi-sandbox-382713.finance_expense_revenue.stock_data_india` ;;

  dimension: adj_close {
    type: string
    sql: ${TABLE}.Adj_Close ;;
  }
  dimension: close {
    type: string
    sql: ${TABLE}.Close ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: high {
    type: string
    sql: ${TABLE}.High ;;
  }
  dimension: low {
    type: string
    sql: ${TABLE}.Low ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: open {
    type: string
    sql: ${TABLE}.Open ;;
  }
  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }
  dimension: volume {
    type: string
    sql: ${TABLE}.Volume ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
