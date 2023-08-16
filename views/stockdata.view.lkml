view: stockdata {
  sql_table_name: `ravi-sandbox-382713.finance_expense_revenue.stockdata` ;;

  dimension: close {
    type: number
    sql: ${TABLE}.close ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: high {
    type: number
    sql: ${TABLE}.high ;;
  }
  dimension: low {
    type: number
    sql: ${TABLE}.low ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: open {
    type: number
    sql: ${TABLE}.open ;;
  }
  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
