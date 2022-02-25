application: scooter-trips {
  label: "Scooter Trips"
  url: "http://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["me", "run_inline_query", "create_query", "create_query_task", "query_task_results", "kill_query", "all_dashboards", "all_looks", "all_lookml_models", "query_for_slug", "run_query"]
    use_embeds: yes
  }
}