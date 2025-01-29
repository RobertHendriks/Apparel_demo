view: epic {
  sql_table_name: `looker-private-demo.jira.epic` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: done {
    type: yesno
    sql: ${TABLE}.done ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
