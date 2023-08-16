- dashboard: testdashboard
  title: testdashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BuAmpU99Ada9bDA3tPqk0m
  elements:
  - title: pop demo dashboard
    name: pop demo dashboard
    model: ravi_pop
    explore: example
    type: looker_line
    fields: [example.date_in_period_date, example.average_amount, example.period]
    pivots: [example.period]
    fill_fields: [example.date_in_period_date]
    filters: {}
    sorts: [example.period, example.date_in_period_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Number of Periods: example.period_count
      Compare To: example.compare_to_period
      Exclude Days: example.exclude_days
      Number of Trailing Days: example.size_of_range
      Period Selection: example.period_selection
      Display Dates In Period Labels (Yes / No): example.display_dates_in_period_labels
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Number of Periods
    title: Number of Periods
    type: field_filter
    default_value: '7'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.period_count
  - name: Exclude Days
    title: Exclude Days
    type: field_filter
    default_value: '1'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.exclude_days
  - name: Period Selection
    title: Period Selection
    type: field_filter
    default_value: trailing
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.period_selection
  - name: Number of Trailing Days
    title: Number of Trailing Days
    type: field_filter
    default_value: '28'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.size_of_range
  - name: Compare To
    title: Compare To
    type: field_filter
    default_value: prior^_period
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.compare_to_period
  - name: Display Dates In Period Labels (Yes / No)
    title: Display Dates In Period Labels (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: ravi_pop
    explore: example
    listens_to_filters: []
    field: example.display_dates_in_period_labels
