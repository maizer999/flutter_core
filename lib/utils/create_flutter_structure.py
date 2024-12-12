import os

def create_structure(base_path, structure):
    for key, value in structure.items():
        if isinstance(value, dict):  # It's a directory
            current_path = os.path.join(base_path, key)
            os.makedirs(current_path, exist_ok=True)
            create_structure(current_path, value)
        else:  # It's a file
            file_path = os.path.join(base_path, key)  # Use the key as the file name
            open(file_path, 'w').close()  # Create an empty file

# Directory structure based on the given example with best practices
flutter_structure = {
    "constants": {
        "api_client": {
            "interceptors": {
                "bad_certificate_fixer.dart": "",
                "default_api_error_handler.dart": "",
                "default_api_interceptor.dart": "",
                "default_time_response_interceptor.dart": "",
                "form_data_interceptor.dart": "",
            },
            "api_exception.dart": "",
            "dio_api_client.dart": "",
            "is_intenet_available_pod.dart": "",
            "response_error_extension.dart": "",
        },
        "api_constants": {
            "api_constants.dart": "",
        },
        "enums": {
            "bottom_sheet_variant.dart": "",  # Corrected typo from "varient"
            "language": {
                "language.dart": "",
                "language_popup_menu.dart": "",
            },
            "vessel_status.dart": "",
        },
        "exceptions": {
            "exceptions.dart": "",
        },
        "network": {
            "network_handler.dart": "",
            "network_info.dart": "",
        },
        "app_colors.dart": "",
        "app_images.dart": "",
        "app_local.dart": "",
        "app_sizes.dart": "",
        "app_strings.dart": "",
        "code_master_keys.dart": "",
        "documents.dart": "",
        "env.dart": "",
        "secure_storage.dart": "",
        "shared_pref_constants.dart": "",
        "status.dart": "",
    },
    "features": {
        "login": {
            "models": {
                "token_response.dart": "",
                "user_details.dart": "",
                "userid_model.dart": "",
            },
            "services": {
                "login_service.dart": "",
            },
            "views": {
                "login_controller.dart": "",
                "login_view.dart": "",
            },
        },
        "common": {
            "models": {
                "common_api_model": {
                    "common_api_model.dart": "",
                    "hijri_calendar_model.dart": "",
                },
                "error_model.dart": "",
                "status_model.dart": "",
            },
            "services": {
                "auth_service.dart": "",  # Corrected the folder name from "authservice"
            },
            "utils": {
                "common_error_utils.dart": "",
                "file_utils.dart": "",
            },
        },
        "splash": {
            "views": {
                "splash_view.dart": "",
            },
        },
    },
    "providers": {
        "is_loading_provider.dart": "",  # Corrected naming convention for providers
        "observers.dart": "",
        "providers.dart": "",
        "sort_dir_provider.dart": "",
    },
    "routes": {
        "auto_route_observer.dart": "",
        "route_constant.dart": "",
        "router.dart": "",
        "router.gr.dart": "",
        "router_pod.dart": "",
    },
    "utils": {
        "extension": {
            "cache_extensions.dart": "",
            "list_extension.dart": "",
        },
        "failure": {
            "failure.dart": "",
        },
        "helpers": {
            "validators.dart": "",
        },
        "theme": {
            "app_text_styles.dart": "",
            "theme.dart": "",
        },
    },
    "assets": {  # Suggested addition for assets
        "images": {},
        "fonts": {},
    },
    "config": {  # Suggested addition for configuration management
        "env_config.dart": "",
    },
    "styles": {  # Suggested addition for global styles
        "button_styles.dart": "",
        "app_bar_styles.dart": "",
        "theme.dart": "",
    },
    "test": {  # Suggested addition for unit tests
        "features": {
            "login": {
                "login_service_test.dart": "",
                "login_controller_test.dart": "",
            },
        },
        "utils": {
            "common_error_utils_test.dart": "",
            "file_utils_test.dart": "",
        },
    },
}

# Replace 'flutter_project' with the desired base directory path
base_directory = "/Users/mohammadabumaizer/Documents/flutter_core/lib"
create_structure(base_directory, flutter_structure)
