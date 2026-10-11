variable "agentic_applications_analyst_agent_personas" {
  description = <<EOT
Map of agentic_applications_analyst_agent_personas, attributes below
Required:
    - analyst_agent_persona_id
    - display_name
    - location
Optional:
    - customer_context
    - deletion_policy
    - display_description
    - gemini_enterprise_engine
    - math_rendering_mode
    - model_description
    - project
    - role
    - artifact_examples (block):
        - resource (required, block):
            - bigquery_resource (optional, block):
                - bigquery_dataset (optional)
                - bigquery_table (optional)
                - column_descriptions (optional)
            - display_label (optional)
            - f1_resource (optional, block):
                - f1_table (optional)
            - google_cloud_storage_resource (optional, block):
                - file_extension_restrictions (optional)
                - google_cloud_storage_object (required)
            - google_drive_resource (optional, block):
                - file_extension_restrictions (optional)
                - file_reference (optional)
            - model_description (optional)
            - raw_file_resource (optional, block):
                - file_content (required)
                - file_title (required)
                - mime_type (required)
            - use_rag (optional)
    - artifacts_config (block):
        - document_generation_options (optional, block):
            - document_examples (optional, block):
                - resource (required, block):
                    - bigquery_resource (optional, block):
                        - bigquery_dataset (optional)
                        - bigquery_table (optional)
                        - column_descriptions (optional)
                    - display_label (optional)
                    - f1_resource (optional, block):
                        - f1_table (optional)
                    - google_cloud_storage_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - google_cloud_storage_object (required)
                    - google_drive_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - file_reference (optional)
                    - model_description (optional)
                    - raw_file_resource (optional, block):
                        - file_content (required)
                        - file_title (required)
                        - mime_type (required)
                    - use_rag (optional)
            - export_format (optional)
        - methodology_export_options (optional, block):
            - append_methodology (optional)
            - export_format (optional)
            - export_methodology_artifact (optional)
        - slide_generation_options (optional, block):
            - export_format (optional)
            - slide_examples (optional, block):
                - resource (required, block):
                    - bigquery_resource (optional, block):
                        - bigquery_dataset (optional)
                        - bigquery_table (optional)
                        - column_descriptions (optional)
                    - display_label (optional)
                    - f1_resource (optional, block):
                        - f1_table (optional)
                    - google_cloud_storage_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - google_cloud_storage_object (required)
                    - google_drive_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - file_reference (optional)
                    - model_description (optional)
                    - raw_file_resource (optional, block):
                        - file_content (required)
                        - file_title (required)
                        - mime_type (required)
                    - use_rag (optional)
        - visualization_options (optional, block):
            - visualization_examples (optional, block):
                - resource (required, block):
                    - bigquery_resource (optional, block):
                        - bigquery_dataset (optional)
                        - bigquery_table (optional)
                        - column_descriptions (optional)
                    - display_label (optional)
                    - f1_resource (optional, block):
                        - f1_table (optional)
                    - google_cloud_storage_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - google_cloud_storage_object (required)
                    - google_drive_resource (optional, block):
                        - file_extension_restrictions (optional)
                        - file_reference (optional)
                    - model_description (optional)
                    - raw_file_resource (optional, block):
                        - file_content (required)
                        - file_title (required)
                        - mime_type (required)
                    - use_rag (optional)
                - visualization_type (required)
            - visualization_mode (optional)
    - external_data_sources (block):
        - air_quality (optional, block):
        - bureau_labor_statistics (optional, block):
        - coindesk (optional, block):
        - enabled (required)
        - finnhub (optional, block):
        - fred (optional, block):
        - sec_edgar (optional, block):
        - treasury_securities_auctions (optional, block):
        - usda (optional, block):
    - mcp_data_sources (block):
        - api_key (optional)
        - api_key_header (optional)
        - api_key_name (optional)
        - client_id (optional)
        - client_secret (optional)
        - description (required)
        - display_name (required)
        - enabled (required)
        - oauth_token_url (optional)
        - prompt (optional)
        - server_url (required)
    - resources (block):
        - bigquery_resource (optional, block):
            - bigquery_dataset (optional)
            - bigquery_table (optional)
            - column_descriptions (optional)
        - display_label (optional)
        - f1_resource (optional, block):
            - f1_table (optional)
        - google_cloud_storage_resource (optional, block):
            - file_extension_restrictions (optional)
            - google_cloud_storage_object (required)
        - google_drive_resource (optional, block):
            - file_extension_restrictions (optional)
            - file_reference (optional)
        - model_description (optional)
        - raw_file_resource (optional, block):
            - file_content (required)
            - file_title (required)
            - mime_type (required)
        - use_rag (optional)
    - skills (block):
        - content (required)
        - description (optional)
        - references (optional, block):
            - content (required)
            - reference_id (required)
        - skill_id (required)
    - tables (block):
        - columns (optional, block):
            - data_type (required)
            - description (optional)
            - name (required)
        - description (optional)
        - name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - web_search_config (block):
        - disabled (optional)
        - excluded_domains (optional)
EOT

  type = map(object({
    analyst_agent_persona_id = string
    display_name             = string
    location                 = string
    customer_context         = optional(list(string))
    deletion_policy          = optional(string)
    display_description      = optional(string)
    gemini_enterprise_engine = optional(string)
    math_rendering_mode      = optional(string)
    model_description        = optional(string)
    project                  = optional(string)
    role                     = optional(string)
    artifact_examples = optional(list(object({
      resource = object({
        bigquery_resource = optional(object({
          bigquery_dataset    = optional(string)
          bigquery_table      = optional(string)
          column_descriptions = optional(map(string))
        }))
        display_label = optional(string)
        f1_resource = optional(object({
          f1_table = optional(string)
        }))
        google_cloud_storage_resource = optional(object({
          file_extension_restrictions = optional(list(string))
          google_cloud_storage_object = string
        }))
        google_drive_resource = optional(object({
          file_extension_restrictions = optional(list(string))
          file_reference              = optional(string)
        }))
        model_description = optional(string)
        raw_file_resource = optional(object({
          file_content = string
          file_title   = string
          mime_type    = string
        }))
        use_rag = optional(bool)
      })
    })))
    artifacts_config = optional(object({
      document_generation_options = optional(object({
        document_examples = optional(list(object({
          resource = object({
            bigquery_resource = optional(object({
              bigquery_dataset    = optional(string)
              bigquery_table      = optional(string)
              column_descriptions = optional(map(string))
            }))
            display_label = optional(string)
            f1_resource = optional(object({
              f1_table = optional(string)
            }))
            google_cloud_storage_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              google_cloud_storage_object = string
            }))
            google_drive_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              file_reference              = optional(string)
            }))
            model_description = optional(string)
            raw_file_resource = optional(object({
              file_content = string
              file_title   = string
              mime_type    = string
            }))
            use_rag = optional(bool)
          })
        })))
        export_format = optional(string)
      }))
      methodology_export_options = optional(object({
        append_methodology          = optional(bool)
        export_format               = optional(string)
        export_methodology_artifact = optional(bool)
      }))
      slide_generation_options = optional(object({
        export_format = optional(string)
        slide_examples = optional(list(object({
          resource = object({
            bigquery_resource = optional(object({
              bigquery_dataset    = optional(string)
              bigquery_table      = optional(string)
              column_descriptions = optional(map(string))
            }))
            display_label = optional(string)
            f1_resource = optional(object({
              f1_table = optional(string)
            }))
            google_cloud_storage_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              google_cloud_storage_object = string
            }))
            google_drive_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              file_reference              = optional(string)
            }))
            model_description = optional(string)
            raw_file_resource = optional(object({
              file_content = string
              file_title   = string
              mime_type    = string
            }))
            use_rag = optional(bool)
          })
        })))
      }))
      visualization_options = optional(object({
        visualization_examples = optional(list(object({
          resource = object({
            bigquery_resource = optional(object({
              bigquery_dataset    = optional(string)
              bigquery_table      = optional(string)
              column_descriptions = optional(map(string))
            }))
            display_label = optional(string)
            f1_resource = optional(object({
              f1_table = optional(string)
            }))
            google_cloud_storage_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              google_cloud_storage_object = string
            }))
            google_drive_resource = optional(object({
              file_extension_restrictions = optional(list(string))
              file_reference              = optional(string)
            }))
            model_description = optional(string)
            raw_file_resource = optional(object({
              file_content = string
              file_title   = string
              mime_type    = string
            }))
            use_rag = optional(bool)
          })
          visualization_type = string
        })))
        visualization_mode = optional(string)
      }))
    }))
    external_data_sources = optional(list(object({
      air_quality = optional(object({
      }))
      bureau_labor_statistics = optional(object({
      }))
      coindesk = optional(object({
      }))
      enabled = bool
      finnhub = optional(object({
      }))
      fred = optional(object({
      }))
      sec_edgar = optional(object({
      }))
      treasury_securities_auctions = optional(object({
      }))
      usda = optional(object({
      }))
    })))
    mcp_data_sources = optional(list(object({
      api_key         = optional(string)
      api_key_header  = optional(string)
      api_key_name    = optional(string)
      client_id       = optional(string)
      client_secret   = optional(string)
      description     = string
      display_name    = string
      enabled         = bool
      oauth_token_url = optional(string)
      prompt          = optional(string)
      server_url      = string
    })))
    resources = optional(list(object({
      bigquery_resource = optional(object({
        bigquery_dataset    = optional(string)
        bigquery_table      = optional(string)
        column_descriptions = optional(map(string))
      }))
      display_label = optional(string)
      f1_resource = optional(object({
        f1_table = optional(string)
      }))
      google_cloud_storage_resource = optional(object({
        file_extension_restrictions = optional(list(string))
        google_cloud_storage_object = string
      }))
      google_drive_resource = optional(object({
        file_extension_restrictions = optional(list(string))
        file_reference              = optional(string)
      }))
      model_description = optional(string)
      raw_file_resource = optional(object({
        file_content = string
        file_title   = string
        mime_type    = string
      }))
      use_rag = optional(bool)
    })))
    skills = optional(list(object({
      content     = string
      description = optional(string)
      references = optional(list(object({
        content      = string
        reference_id = string
      })))
      skill_id = string
    })))
    tables = optional(list(object({
      columns = optional(list(object({
        data_type   = string
        description = optional(string)
        name        = string
      })))
      description = optional(string)
      name        = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    web_search_config = optional(object({
      disabled         = optional(bool)
      excluded_domains = optional(list(string))
    }))
  }))
}

