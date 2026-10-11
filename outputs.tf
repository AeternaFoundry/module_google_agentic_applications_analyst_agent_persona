output "agentic_applications_analyst_agent_personas_id" {
  description = "Map of id values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no id are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agentic_applications_analyst_agent_personas_analyst_agent_persona_id" {
  description = "Map of analyst_agent_persona_id values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no analyst_agent_persona_id are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.analyst_agent_persona_id if v.analyst_agent_persona_id != null && length(v.analyst_agent_persona_id) > 0 }
}
output "agentic_applications_analyst_agent_personas_artifact_examples" {
  description = "Map of artifact_examples values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no artifact_examples are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.artifact_examples if v.artifact_examples != null && length(v.artifact_examples) > 0 }
}
output "agentic_applications_analyst_agent_personas_artifacts_config" {
  description = "Map of artifacts_config values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no artifacts_config are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => one(v.artifacts_config) if v.artifacts_config != null && length(v.artifacts_config) > 0 }
}
output "agentic_applications_analyst_agent_personas_create_time" {
  description = "Map of create_time values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no create_time are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "agentic_applications_analyst_agent_personas_customer_context" {
  description = "Map of customer_context values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no customer_context are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.customer_context if v.customer_context != null && length(v.customer_context) > 0 }
}
output "agentic_applications_analyst_agent_personas_deletion_policy" {
  description = "Map of deletion_policy values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no deletion_policy are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "agentic_applications_analyst_agent_personas_display_description" {
  description = "Map of display_description values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no display_description are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.display_description if v.display_description != null && length(v.display_description) > 0 }
}
output "agentic_applications_analyst_agent_personas_display_name" {
  description = "Map of display_name values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no display_name are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "agentic_applications_analyst_agent_personas_external_data_sources" {
  description = "Map of external_data_sources values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no external_data_sources are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.external_data_sources if v.external_data_sources != null && length(v.external_data_sources) > 0 }
}
output "agentic_applications_analyst_agent_personas_gemini_enterprise_engine" {
  description = "Map of gemini_enterprise_engine values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no gemini_enterprise_engine are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.gemini_enterprise_engine if v.gemini_enterprise_engine != null && length(v.gemini_enterprise_engine) > 0 }
}
output "agentic_applications_analyst_agent_personas_location" {
  description = "Map of location values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no location are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.location if v.location != null && length(v.location) > 0 }
}
output "agentic_applications_analyst_agent_personas_math_rendering_mode" {
  description = "Map of math_rendering_mode values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no math_rendering_mode are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.math_rendering_mode if v.math_rendering_mode != null && length(v.math_rendering_mode) > 0 }
}
output "agentic_applications_analyst_agent_personas_mcp_data_sources" {
  description = "Map of mcp_data_sources values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no mcp_data_sources are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.mcp_data_sources if v.mcp_data_sources != null && length(v.mcp_data_sources) > 0 }
  sensitive   = true
}
output "agentic_applications_analyst_agent_personas_model_description" {
  description = "Map of model_description values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no model_description are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.model_description if v.model_description != null && length(v.model_description) > 0 }
}
output "agentic_applications_analyst_agent_personas_name" {
  description = "Map of name values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no name are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agentic_applications_analyst_agent_personas_project" {
  description = "Map of project values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no project are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.project if v.project != null && length(v.project) > 0 }
}
output "agentic_applications_analyst_agent_personas_resources" {
  description = "Map of resources values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no resources are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "agentic_applications_analyst_agent_personas_role" {
  description = "Map of role values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no role are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.role if v.role != null && length(v.role) > 0 }
}
output "agentic_applications_analyst_agent_personas_skills" {
  description = "Map of skills values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no skills are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.skills if v.skills != null && length(v.skills) > 0 }
}
output "agentic_applications_analyst_agent_personas_tables" {
  description = "Map of tables values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no tables are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.tables if v.tables != null && length(v.tables) > 0 }
}
output "agentic_applications_analyst_agent_personas_update_time" {
  description = "Map of update_time values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no update_time are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "agentic_applications_analyst_agent_personas_web_search_config" {
  description = "Map of web_search_config values across all agentic_applications_analyst_agent_personas, keyed the same as var.agentic_applications_analyst_agent_personas except keys with no web_search_config are omitted"
  value       = { for k, v in google_agentic_applications_analyst_agent_persona.agentic_applications_analyst_agent_personas : k => one(v.web_search_config) if v.web_search_config != null && length(v.web_search_config) > 0 }
}

