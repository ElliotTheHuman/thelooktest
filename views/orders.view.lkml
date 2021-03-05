view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  filter: metric_selector {}
  filter: row_limit {}

  dimension: id {
    primary_key: yes
    label: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus faucibus erat eu libero aliquet blandit. Sed mauris nisi, ultricies ac orci a, auctor pharetra urna. In id odio nibh. Nunc in magna et lectus posuere venenatis. Nullam tincidunt nunc quis ex tincidunt feugiat. Duis sollicitudin eros non pretium condimentum. Nunc rutrum in ipsum sit amet auctor. Sed ac posuere justo. Aenean iaculis sed metus sit amet pellentesque. Nunc quis nibh vitae dui volutpat hendrerit a et dolor. Vestibulum ultrices nulla eu lectus scelerisque, sed aliquet dui scelerisque. Class aptent taciti sociosqu ad litora torquent per conubia nostra."
    type: number
    sql: ${TABLE}.id ;;
  }


  dimension_group: created {
    type: time
    label: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus faucibus erat eu libero aliquet blandit. Sed mauris nisi, ultricies ac orci a, auctor pharetra urna. In id odio nibh. Nunc in magna et lectus posuere venenatis. Nullam tincidunt nunc quis ex tincidunt feugiat. Duis sollicitudin eros non pretium condimentum. Nunc rutrum in ipsum sit amet auctor. Sed ac posuere justo. Aenean iaculis sed metus sit amet pellentesque. Nunc quis nibh vitae dui volutpat hendrerit a et dolor. Vestibulum ultrices nulla eu lectus scelerisque, sed aliquet dui scelerisque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum eleifend euismod orci sit amet viverra. Curabitur vitae dignissim enim. Integer euismod malesuada sapien ac cursus."
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.id, users.first_name, order_items.count]
  }
}
