view: issue {
  sql_table_name: `looker-private-demo.jira.issue` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension: _original_estimate {
    type: number
    sql: ${TABLE}._original_estimate ;;
  }
  dimension: _remaining_estimate {
    type: number
    sql: ${TABLE}._remaining_estimate ;;
  }
  dimension: _time_spent {
    type: number
    sql: ${TABLE}._time_spent ;;
  }
  dimension: assignee {
    type: string
    sql: ${TABLE}.assignee ;;
  }
  dimension: assistant {
    type: string
    sql: ${TABLE}.assistant ;;
  }
  dimension_group: change_completion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.change_completion_date ;;
  }
  dimension: change_reason {
    type: number
    sql: ${TABLE}.change_reason ;;
  }
  dimension: change_risk {
    type: number
    sql: ${TABLE}.change_risk ;;
  }
  dimension_group: change_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.change_start_date ;;
  }
  dimension: change_type {
    type: number
    sql: ${TABLE}.change_type ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
  }
  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }
  dimension: customer_contact_address {
    type: string
    sql: ${TABLE}.customer_contact_address ;;
  }
  dimension: customer_contact_email {
    type: string
    sql: ${TABLE}.customer_contact_email ;;
  }
  dimension: customer_contact_name {
    type: string
    sql: ${TABLE}.customer_contact_name ;;
  }
  dimension: customer_contact_phone {
    type: string
    sql: ${TABLE}.customer_contact_phone ;;
  }
  dimension: customer_district {
    type: string
    sql: ${TABLE}.customer_district ;;
  }
  dimension: days {
    type: number
    sql: ${TABLE}.days ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: development {
    type: string
    sql: ${TABLE}.development ;;
  }
  dimension_group: due {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.due_date ;;
  }
  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }
  dimension: epic_link {
    type: number
    sql: ${TABLE}.epic_link ;;
  }
  dimension: epic_name {
    type: string
    sql: ${TABLE}.epic_name ;;
  }
  dimension: external_issue_id {
    type: string
    sql: ${TABLE}.external_issue_id ;;
  }
  dimension: impact {
    type: number
    sql: ${TABLE}.impact ;;
  }
  dimension: issue_color {
    type: string
    sql: ${TABLE}.issue_color ;;
  }
  dimension: issue_type {
    type: number
    sql: ${TABLE}.issue_type ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension_group: last_viewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_viewed ;;
  }
  dimension: original_estimate {
    type: number
    sql: ${TABLE}.original_estimate ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }
  dimension: parent_link {
    type: number
    sql: ${TABLE}.parent_link ;;
  }
  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }
  dimension: project {
    type: number
    sql: ${TABLE}.project ;;
  }
  dimension: remaining_estimate {
    type: number
    sql: ${TABLE}.remaining_estimate ;;
  }
  dimension: reporter {
    type: string
    sql: ${TABLE}.reporter ;;
  }
  dimension: resolution {
    type: number
    sql: ${TABLE}.resolution ;;
  }
  dimension_group: resolved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resolved ;;
  }
  dimension_group: scheduled_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.scheduled_date ;;
  }
  dimension: scheduled_duration {
    type: number
    sql: ${TABLE}.scheduled_duration ;;
  }
  dimension: scheduled_time {
    type: string
    sql: ${TABLE}.scheduled_time ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension_group: status_category_changed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.status_category_changed ;;
  }
  dimension: story_point_estimate {
    type: number
    sql: ${TABLE}.story_point_estimate ;;
  }
  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }
  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }
  dimension: time_zone {
    type: number
    sql: ${TABLE}.time_zone ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated ;;
  }
  dimension: work_ratio {
    type: number
    sql: ${TABLE}.work_ratio ;;
  }
  measure: count {
    type: count
    drill_fields: [id, customer_contact_name, epic_name]
  }
}
