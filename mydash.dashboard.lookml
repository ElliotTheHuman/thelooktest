- dashboard: my_dash
  title: My Dash
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Number
    name: Number
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Count: orders.count
    row:
    col:
    width:
    height:
  filters:
  - name: Count
    title: Count
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: thelook
    explore: orders
    listens_to_filters: []
    field: orders.count
