connection: "thelook"

# include all the views
include: "*.view"
# include: "*.dashboard"

# datagroup: quinn_s_ecommerce_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }
#
# #persist_with: quinn_s_ecommerce_default_datagroup
#


explore: products {
 label: "Company"
  extension: required
}

# explore: order_items {
#   join: order_ext {
#     sql_on: ${order_ext.id} = ${order_items.order_id}
#     AND {% condition date_filter %} ${order_ext.date_filter_dim} {% endcondition %};;
#   }
# }
# explore: events {
#   view_name: events
#   join: users {
#     type: left_outer
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: events_ext {
#   extends: [events]
#   from: events_ext
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${events.test_id} = ${orders.id} ;;
#   }
# }
#
#
#
#
#
#
# explore: inventory_items {
#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: order_items {
#   join: inventory_items {
#     type: left_outer
#     sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }
#
#   join: orders {
#     type: left_outer
#     sql_on: ${order_items.order_id} = ${orders.id} ;;
#     relationship: many_to_one
#   }
#
#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
#
#   join: users {
#     type: left_outer
#     sql_on: ${orders.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: orders {
#   join: users {
#     type: left_outer
#     sql_on: ${orders.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
# }



# explore: schema_migrations {}
#
# explore: user_data {
#   join: users {
#     type: left_outer
#     sql_on: ${user_data.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: users {
#   hidden: yes
# }
#
# explore: users_nn {}
