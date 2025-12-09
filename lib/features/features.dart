// Core - App
export 'package:flutter/material.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';

export '../core/app/app_error.dart';
export '../core/app/dio_exceptions.dart';
export '../core/app/endpoints.dart';
export '../core/app/error.dart';
// Core - Config
export '../core/config/environment_config.dart';
// Core - Service Locators
export '../core/core_service_locators.dart';
// Core - Domain
export '../core/domain/base_app_service.dart';
export '../core/domain/paginated_response.dart';
export '../core/locators.dart';
// Core - Network
export '../core/network/api.dart';
export '../core/network/base_api.dart';
export '../core/network/notification_services.dart';
// Core - Resources
export '../core/resources/app_colors.dart';
export '../core/resources/app_fonts.dart';
export '../core/resources/app_size.dart';
export '../core/resources/app_text_styles.dart';
export '../core/resources/resources.dart';
export '../core/resources/theme.dart';
export '../core/route/route.dart';
// Core - Route
export '../core/route/route_transition.dart';
export '../core/service_locator.dart';
// Core - Shared
export '../core/shared/app_animated_column.dart';
export '../core/shared/app_button.dart';
export '../core/shared/app_loading_overlay.dart';
export '../core/shared/app_retry_widget.dart';
export '../core/shared/bounce_in_animation.dart';
export '../core/shared/constants.dart';
export '../core/shared/image_placeholder.dart';
export '../core/shared/splash_screen.dart';
export '../core/shared/view_state.dart';
// Core - UI
export '../core/ui/assets.dart';
export '../core/ui/spacing.dart';
export '../core/ui/theme.dart';
// Items feature
export 'items/presentation/screens/item_detail_screen.dart';
export 'items/presentation/widgets/about_tab.dart';
export 'items/presentation/widgets/detail_row.dart';
export 'items/presentation/widgets/item_action_buttons.dart';
export 'items/presentation/widgets/item_action_row.dart';
export 'items/presentation/widgets/item_detail_header.dart';
export 'items/presentation/widgets/item_image.dart';
export 'items/presentation/widgets/item_tab_bar.dart';
export 'items/presentation/widgets/styling_tags_section.dart';
export 'items/presentation/widgets/tags_section.dart';
// User feature - Domain
export 'user/domain/models/models.dart';
export 'user/domain/models/wardrobe_piece.dart';
export 'user/domain/models/wardrobe_response.dart';
export 'user/domain/service/user_service.dart';
// User feature - Presentation
export 'user/presentation/bloc/get_user_wardrobe_cubit.dart';
export 'user/presentation/screens/profile_screen.dart';
export 'user/presentation/widgets/category_list.dart';
export 'user/presentation/widgets/category_widget.dart';
export 'user/presentation/widgets/product_card.dart';
export 'user/presentation/widgets/products_grid.dart';
export 'user/presentation/widgets/profile_card.dart';
export 'user/presentation/widgets/profile_stats.dart';
export 'user/presentation/widgets/style_tag.dart';
export 'user/presentation/widgets/widgets.dart';
// User feature - Service Locator
export 'user/user_service_locator.dart';
