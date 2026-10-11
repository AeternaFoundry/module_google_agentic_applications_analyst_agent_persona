resource "google_agentic_applications_analyst_agent_persona" "agentic_applications_analyst_agent_personas" {
  for_each = var.agentic_applications_analyst_agent_personas

  analyst_agent_persona_id = each.value.analyst_agent_persona_id
  display_name             = each.value.display_name
  location                 = each.value.location
  customer_context         = each.value.customer_context
  deletion_policy          = each.value.deletion_policy
  display_description      = each.value.display_description
  gemini_enterprise_engine = each.value.gemini_enterprise_engine
  math_rendering_mode      = each.value.math_rendering_mode
  model_description        = each.value.model_description
  project                  = each.value.project
  role                     = each.value.role

  dynamic "artifact_examples" {
    for_each = each.value.artifact_examples != null ? each.value.artifact_examples : []
    content {
      resource {
        dynamic "bigquery_resource" {
          for_each = artifact_examples.value.resource.bigquery_resource != null ? [artifact_examples.value.resource.bigquery_resource] : []
          content {
            bigquery_dataset    = bigquery_resource.value.bigquery_dataset
            bigquery_table      = bigquery_resource.value.bigquery_table
            column_descriptions = bigquery_resource.value.column_descriptions
          }
        }
        display_label = artifact_examples.value.resource.display_label
        dynamic "f1_resource" {
          for_each = artifact_examples.value.resource.f1_resource != null ? [artifact_examples.value.resource.f1_resource] : []
          content {
            f1_table = f1_resource.value.f1_table
          }
        }
        dynamic "google_cloud_storage_resource" {
          for_each = artifact_examples.value.resource.google_cloud_storage_resource != null ? [artifact_examples.value.resource.google_cloud_storage_resource] : []
          content {
            file_extension_restrictions = google_cloud_storage_resource.value.file_extension_restrictions
            google_cloud_storage_object = google_cloud_storage_resource.value.google_cloud_storage_object
          }
        }
        dynamic "google_drive_resource" {
          for_each = artifact_examples.value.resource.google_drive_resource != null ? [artifact_examples.value.resource.google_drive_resource] : []
          content {
            file_extension_restrictions = google_drive_resource.value.file_extension_restrictions
            file_reference              = google_drive_resource.value.file_reference
          }
        }
        model_description = artifact_examples.value.resource.model_description
        dynamic "raw_file_resource" {
          for_each = artifact_examples.value.resource.raw_file_resource != null ? [artifact_examples.value.resource.raw_file_resource] : []
          content {
            file_content = raw_file_resource.value.file_content
            file_title   = raw_file_resource.value.file_title
            mime_type    = raw_file_resource.value.mime_type
          }
        }
        use_rag = artifact_examples.value.resource.use_rag
      }
    }
  }

  dynamic "artifacts_config" {
    for_each = each.value.artifacts_config != null ? [each.value.artifacts_config] : []
    content {
      dynamic "document_generation_options" {
        for_each = artifacts_config.value.document_generation_options != null ? [artifacts_config.value.document_generation_options] : []
        content {
          dynamic "document_examples" {
            for_each = document_generation_options.value.document_examples != null ? document_generation_options.value.document_examples : []
            content {
              resource {
                dynamic "bigquery_resource" {
                  for_each = document_examples.value.resource.bigquery_resource != null ? [document_examples.value.resource.bigquery_resource] : []
                  content {
                    bigquery_dataset    = bigquery_resource.value.bigquery_dataset
                    bigquery_table      = bigquery_resource.value.bigquery_table
                    column_descriptions = bigquery_resource.value.column_descriptions
                  }
                }
                display_label = document_examples.value.resource.display_label
                dynamic "f1_resource" {
                  for_each = document_examples.value.resource.f1_resource != null ? [document_examples.value.resource.f1_resource] : []
                  content {
                    f1_table = f1_resource.value.f1_table
                  }
                }
                dynamic "google_cloud_storage_resource" {
                  for_each = document_examples.value.resource.google_cloud_storage_resource != null ? [document_examples.value.resource.google_cloud_storage_resource] : []
                  content {
                    file_extension_restrictions = google_cloud_storage_resource.value.file_extension_restrictions
                    google_cloud_storage_object = google_cloud_storage_resource.value.google_cloud_storage_object
                  }
                }
                dynamic "google_drive_resource" {
                  for_each = document_examples.value.resource.google_drive_resource != null ? [document_examples.value.resource.google_drive_resource] : []
                  content {
                    file_extension_restrictions = google_drive_resource.value.file_extension_restrictions
                    file_reference              = google_drive_resource.value.file_reference
                  }
                }
                model_description = document_examples.value.resource.model_description
                dynamic "raw_file_resource" {
                  for_each = document_examples.value.resource.raw_file_resource != null ? [document_examples.value.resource.raw_file_resource] : []
                  content {
                    file_content = raw_file_resource.value.file_content
                    file_title   = raw_file_resource.value.file_title
                    mime_type    = raw_file_resource.value.mime_type
                  }
                }
                use_rag = document_examples.value.resource.use_rag
              }
            }
          }
          export_format = document_generation_options.value.export_format
        }
      }
      dynamic "methodology_export_options" {
        for_each = artifacts_config.value.methodology_export_options != null ? [artifacts_config.value.methodology_export_options] : []
        content {
          append_methodology          = methodology_export_options.value.append_methodology
          export_format               = methodology_export_options.value.export_format
          export_methodology_artifact = methodology_export_options.value.export_methodology_artifact
        }
      }
      dynamic "slide_generation_options" {
        for_each = artifacts_config.value.slide_generation_options != null ? [artifacts_config.value.slide_generation_options] : []
        content {
          export_format = slide_generation_options.value.export_format
          dynamic "slide_examples" {
            for_each = slide_generation_options.value.slide_examples != null ? slide_generation_options.value.slide_examples : []
            content {
              resource {
                dynamic "bigquery_resource" {
                  for_each = slide_examples.value.resource.bigquery_resource != null ? [slide_examples.value.resource.bigquery_resource] : []
                  content {
                    bigquery_dataset    = bigquery_resource.value.bigquery_dataset
                    bigquery_table      = bigquery_resource.value.bigquery_table
                    column_descriptions = bigquery_resource.value.column_descriptions
                  }
                }
                display_label = slide_examples.value.resource.display_label
                dynamic "f1_resource" {
                  for_each = slide_examples.value.resource.f1_resource != null ? [slide_examples.value.resource.f1_resource] : []
                  content {
                    f1_table = f1_resource.value.f1_table
                  }
                }
                dynamic "google_cloud_storage_resource" {
                  for_each = slide_examples.value.resource.google_cloud_storage_resource != null ? [slide_examples.value.resource.google_cloud_storage_resource] : []
                  content {
                    file_extension_restrictions = google_cloud_storage_resource.value.file_extension_restrictions
                    google_cloud_storage_object = google_cloud_storage_resource.value.google_cloud_storage_object
                  }
                }
                dynamic "google_drive_resource" {
                  for_each = slide_examples.value.resource.google_drive_resource != null ? [slide_examples.value.resource.google_drive_resource] : []
                  content {
                    file_extension_restrictions = google_drive_resource.value.file_extension_restrictions
                    file_reference              = google_drive_resource.value.file_reference
                  }
                }
                model_description = slide_examples.value.resource.model_description
                dynamic "raw_file_resource" {
                  for_each = slide_examples.value.resource.raw_file_resource != null ? [slide_examples.value.resource.raw_file_resource] : []
                  content {
                    file_content = raw_file_resource.value.file_content
                    file_title   = raw_file_resource.value.file_title
                    mime_type    = raw_file_resource.value.mime_type
                  }
                }
                use_rag = slide_examples.value.resource.use_rag
              }
            }
          }
        }
      }
      dynamic "visualization_options" {
        for_each = artifacts_config.value.visualization_options != null ? [artifacts_config.value.visualization_options] : []
        content {
          dynamic "visualization_examples" {
            for_each = visualization_options.value.visualization_examples != null ? visualization_options.value.visualization_examples : []
            content {
              resource {
                dynamic "bigquery_resource" {
                  for_each = visualization_examples.value.resource.bigquery_resource != null ? [visualization_examples.value.resource.bigquery_resource] : []
                  content {
                    bigquery_dataset    = bigquery_resource.value.bigquery_dataset
                    bigquery_table      = bigquery_resource.value.bigquery_table
                    column_descriptions = bigquery_resource.value.column_descriptions
                  }
                }
                display_label = visualization_examples.value.resource.display_label
                dynamic "f1_resource" {
                  for_each = visualization_examples.value.resource.f1_resource != null ? [visualization_examples.value.resource.f1_resource] : []
                  content {
                    f1_table = f1_resource.value.f1_table
                  }
                }
                dynamic "google_cloud_storage_resource" {
                  for_each = visualization_examples.value.resource.google_cloud_storage_resource != null ? [visualization_examples.value.resource.google_cloud_storage_resource] : []
                  content {
                    file_extension_restrictions = google_cloud_storage_resource.value.file_extension_restrictions
                    google_cloud_storage_object = google_cloud_storage_resource.value.google_cloud_storage_object
                  }
                }
                dynamic "google_drive_resource" {
                  for_each = visualization_examples.value.resource.google_drive_resource != null ? [visualization_examples.value.resource.google_drive_resource] : []
                  content {
                    file_extension_restrictions = google_drive_resource.value.file_extension_restrictions
                    file_reference              = google_drive_resource.value.file_reference
                  }
                }
                model_description = visualization_examples.value.resource.model_description
                dynamic "raw_file_resource" {
                  for_each = visualization_examples.value.resource.raw_file_resource != null ? [visualization_examples.value.resource.raw_file_resource] : []
                  content {
                    file_content = raw_file_resource.value.file_content
                    file_title   = raw_file_resource.value.file_title
                    mime_type    = raw_file_resource.value.mime_type
                  }
                }
                use_rag = visualization_examples.value.resource.use_rag
              }
              visualization_type = visualization_examples.value.visualization_type
            }
          }
          visualization_mode = visualization_options.value.visualization_mode
        }
      }
    }
  }

  dynamic "external_data_sources" {
    for_each = each.value.external_data_sources != null ? each.value.external_data_sources : []
    content {
      dynamic "air_quality" {
        for_each = external_data_sources.value.air_quality != null ? [external_data_sources.value.air_quality] : []
        content {
        }
      }
      dynamic "bureau_labor_statistics" {
        for_each = external_data_sources.value.bureau_labor_statistics != null ? [external_data_sources.value.bureau_labor_statistics] : []
        content {
        }
      }
      dynamic "coindesk" {
        for_each = external_data_sources.value.coindesk != null ? [external_data_sources.value.coindesk] : []
        content {
        }
      }
      enabled = external_data_sources.value.enabled
      dynamic "finnhub" {
        for_each = external_data_sources.value.finnhub != null ? [external_data_sources.value.finnhub] : []
        content {
        }
      }
      dynamic "fred" {
        for_each = external_data_sources.value.fred != null ? [external_data_sources.value.fred] : []
        content {
        }
      }
      dynamic "sec_edgar" {
        for_each = external_data_sources.value.sec_edgar != null ? [external_data_sources.value.sec_edgar] : []
        content {
        }
      }
      dynamic "treasury_securities_auctions" {
        for_each = external_data_sources.value.treasury_securities_auctions != null ? [external_data_sources.value.treasury_securities_auctions] : []
        content {
        }
      }
      dynamic "usda" {
        for_each = external_data_sources.value.usda != null ? [external_data_sources.value.usda] : []
        content {
        }
      }
    }
  }

  dynamic "mcp_data_sources" {
    for_each = each.value.mcp_data_sources != null ? each.value.mcp_data_sources : []
    content {
      api_key         = mcp_data_sources.value.api_key
      api_key_header  = mcp_data_sources.value.api_key_header
      api_key_name    = mcp_data_sources.value.api_key_name
      client_id       = mcp_data_sources.value.client_id
      client_secret   = mcp_data_sources.value.client_secret
      description     = mcp_data_sources.value.description
      display_name    = mcp_data_sources.value.display_name
      enabled         = mcp_data_sources.value.enabled
      oauth_token_url = mcp_data_sources.value.oauth_token_url
      prompt          = mcp_data_sources.value.prompt
      server_url      = mcp_data_sources.value.server_url
    }
  }

  dynamic "resources" {
    for_each = each.value.resources != null ? each.value.resources : []
    content {
      dynamic "bigquery_resource" {
        for_each = resources.value.bigquery_resource != null ? [resources.value.bigquery_resource] : []
        content {
          bigquery_dataset    = bigquery_resource.value.bigquery_dataset
          bigquery_table      = bigquery_resource.value.bigquery_table
          column_descriptions = bigquery_resource.value.column_descriptions
        }
      }
      display_label = resources.value.display_label
      dynamic "f1_resource" {
        for_each = resources.value.f1_resource != null ? [resources.value.f1_resource] : []
        content {
          f1_table = f1_resource.value.f1_table
        }
      }
      dynamic "google_cloud_storage_resource" {
        for_each = resources.value.google_cloud_storage_resource != null ? [resources.value.google_cloud_storage_resource] : []
        content {
          file_extension_restrictions = google_cloud_storage_resource.value.file_extension_restrictions
          google_cloud_storage_object = google_cloud_storage_resource.value.google_cloud_storage_object
        }
      }
      dynamic "google_drive_resource" {
        for_each = resources.value.google_drive_resource != null ? [resources.value.google_drive_resource] : []
        content {
          file_extension_restrictions = google_drive_resource.value.file_extension_restrictions
          file_reference              = google_drive_resource.value.file_reference
        }
      }
      model_description = resources.value.model_description
      dynamic "raw_file_resource" {
        for_each = resources.value.raw_file_resource != null ? [resources.value.raw_file_resource] : []
        content {
          file_content = raw_file_resource.value.file_content
          file_title   = raw_file_resource.value.file_title
          mime_type    = raw_file_resource.value.mime_type
        }
      }
      use_rag = resources.value.use_rag
    }
  }

  dynamic "skills" {
    for_each = each.value.skills != null ? each.value.skills : []
    content {
      content     = skills.value.content
      description = skills.value.description
      dynamic "references" {
        for_each = skills.value.references != null ? skills.value.references : []
        content {
          content      = references.value.content
          reference_id = references.value.reference_id
        }
      }
      skill_id = skills.value.skill_id
    }
  }

  dynamic "tables" {
    for_each = each.value.tables != null ? each.value.tables : []
    content {
      dynamic "columns" {
        for_each = tables.value.columns != null ? tables.value.columns : []
        content {
          data_type   = columns.value.data_type
          description = columns.value.description
          name        = columns.value.name
        }
      }
      description = tables.value.description
      name        = tables.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "web_search_config" {
    for_each = each.value.web_search_config != null ? [each.value.web_search_config] : []
    content {
      disabled         = web_search_config.value.disabled
      excluded_domains = web_search_config.value.excluded_domains
    }
  }
}

