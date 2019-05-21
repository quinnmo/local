view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: created {

  }

  dimension_group: created_d {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week
    ]
    sql: ${TABLE}.created_at  ;;
  }

#   dimension_group: date_add_5 {
#     type: time
#     timeframes: [
#       raw,
#       date,
#       day_of_week
#
#     ]
#     sql: adddate(${created_date},  8 ) ;;
#   }




  parameter: test_series {
    type: string
  }
  dimension: status {
    type: string
    sql:  ${TABLE}.status  ;;
  }

#   measure: liquid_test {
#     type: count_distinct
#     sql: {% if orders.status._is_selected %}
#     (${user_id} * 10)
#     {% elsif orders.status._is_filtered %}
#     (${user_id} * 5)
#     {% else %}
#     (${user_id} * 2)
#     {% endif %}
#     ;;
#   }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: test_ref {
    sql: ${created} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.last_name, users.id, order_items.count]
  }
}
