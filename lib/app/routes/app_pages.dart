import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/appearance/bindings/appearance_binding.dart';
import '../modules/appearance/views/appearance_view.dart';
import '../modules/backup/bindings/backup_binding.dart';
import '../modules/backup/views/backup_view.dart';
import '../modules/browse/bindings/browse_binding.dart';
import '../modules/browse/views/browse_view.dart';
import '../modules/browse_settings/bindings/browse_settings_binding.dart';
import '../modules/browse_settings/views/browse_settings_view.dart';
import '../modules/downloads/bindings/downloads_binding.dart';
import '../modules/downloads/views/downloads_view.dart';
import '../modules/edit_categories/bindings/edit_categories_binding.dart';
import '../modules/edit_categories/views/edit_categories_view.dart';
import '../modules/extensions/bindings/extensions_binding.dart';
import '../modules/extensions/views/extensions_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/library/bindings/library_binding.dart';
import '../modules/library/views/library_view.dart';
import '../modules/more/bindings/more_binding.dart';
import '../modules/more/views/more_view.dart';
import '../modules/reader_settings/bindings/reader_settings_binding.dart';
import '../modules/reader_settings/views/reader_settings_view.dart';
import '../modules/server_settings/bindings/server_settings_binding.dart';
import '../modules/server_settings/views/server_settings_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/sources/bindings/sources_binding.dart';
import '../modules/sources/views/sources_view.dart';
import '../modules/updates/bindings/updates_binding.dart';
import '../modules/updates/views/updates_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.library,
      page: () => LibraryView(),
      binding: LibraryBinding(),
    ),
    GetPage(
      name: _Paths.updates,
      page: () => UpdatesView(),
      binding: UpdatesBinding(),
    ),
    GetPage(
      name: _Paths.browse,
      page: () => BrowseView(),
      binding: BrowseBinding(),
    ),
    GetPage(
      name: _Paths.downloads,
      page: () => DownloadsView(),
      binding: DownloadsBinding(),
    ),
    GetPage(
      name: _Paths.more,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.about,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.appearance,
      page: () => AppearanceView(),
      binding: AppearanceBinding(),
    ),
    GetPage(
      name: _Paths.backup,
      page: () => BackupView(),
      binding: BackupBinding(),
    ),
    GetPage(
      name: _Paths.settings,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.browseSettings,
      page: () => BrowseSettingsView(),
      binding: BrowseSettingsBinding(),
    ),
    GetPage(
      name: _Paths.readerSettings,
      page: () => ReaderSettingsView(),
      binding: ReaderSettingsBinding(),
    ),
    GetPage(
      name: _Paths.serverSettings,
      page: () => ServerSettingsView(),
      binding: ServerSettingsBinding(),
    ),
    GetPage(
      name: _Paths.editCategories,
      page: () => EditCategoriesView(),
      binding: EditCategoriesBinding(),
    ),
    GetPage(
      name: _Paths.EXTENSIONS,
      page: () => ExtensionsView(),
      binding: ExtensionsBinding(),
    ),
    GetPage(
      name: _Paths.SOURCES,
      page: () => SourcesView(),
      binding: SourcesBinding(),
    ),
  ];
}