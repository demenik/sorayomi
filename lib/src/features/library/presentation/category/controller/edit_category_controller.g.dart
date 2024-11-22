// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_category_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryListQueryHash() => r'47eb6a35cc23a6d24dbe7981cff742174512b4ce';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [categoryListQuery].
@ProviderFor(categoryListQuery)
const categoryListQueryProvider = CategoryListQueryFamily();

/// See also [categoryListQuery].
class CategoryListQueryFamily extends Family<List<Category>?> {
  /// See also [categoryListQuery].
  const CategoryListQueryFamily();

  /// See also [categoryListQuery].
  CategoryListQueryProvider call({
    required String query,
  }) {
    return CategoryListQueryProvider(
      query: query,
    );
  }

  @override
  CategoryListQueryProvider getProviderOverride(
    covariant CategoryListQueryProvider provider,
  ) {
    return call(
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'categoryListQueryProvider';
}

/// See also [categoryListQuery].
class CategoryListQueryProvider extends AutoDisposeProvider<List<Category>?> {
  /// See also [categoryListQuery].
  CategoryListQueryProvider({
    required String query,
  }) : this._internal(
          (ref) => categoryListQuery(
            ref as CategoryListQueryRef,
            query: query,
          ),
          from: categoryListQueryProvider,
          name: r'categoryListQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoryListQueryHash,
          dependencies: CategoryListQueryFamily._dependencies,
          allTransitiveDependencies:
              CategoryListQueryFamily._allTransitiveDependencies,
          query: query,
        );

  CategoryListQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    List<Category>? Function(CategoryListQueryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CategoryListQueryProvider._internal(
        (ref) => create(ref as CategoryListQueryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Category>?> createElement() {
    return _CategoryListQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryListQueryProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CategoryListQueryRef on AutoDisposeProviderRef<List<Category>?> {
  /// The parameter `query` of this provider.
  String get query;
}

class _CategoryListQueryProviderElement
    extends AutoDisposeProviderElement<List<Category>?>
    with CategoryListQueryRef {
  _CategoryListQueryProviderElement(super.provider);

  @override
  String get query => (origin as CategoryListQueryProvider).query;
}

String _$getCategoryHash() => r'eab51e453f9c249a483244de7d7b75011f3e5e2f';

/// See also [getCategory].
@ProviderFor(getCategory)
const getCategoryProvider = GetCategoryFamily();

/// See also [getCategory].
class GetCategoryFamily extends Family<Category?> {
  /// See also [getCategory].
  const GetCategoryFamily();

  /// See also [getCategory].
  GetCategoryProvider call({
    required int categoryId,
  }) {
    return GetCategoryProvider(
      categoryId: categoryId,
    );
  }

  @override
  GetCategoryProvider getProviderOverride(
    covariant GetCategoryProvider provider,
  ) {
    return call(
      categoryId: provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCategoryProvider';
}

/// See also [getCategory].
class GetCategoryProvider extends AutoDisposeProvider<Category?> {
  /// See also [getCategory].
  GetCategoryProvider({
    required int categoryId,
  }) : this._internal(
          (ref) => getCategory(
            ref as GetCategoryRef,
            categoryId: categoryId,
          ),
          from: getCategoryProvider,
          name: r'getCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryHash,
          dependencies: GetCategoryFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GetCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int categoryId;

  @override
  Override overrideWith(
    Category? Function(GetCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCategoryProvider._internal(
        (ref) => create(ref as GetCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Category?> createElement() {
    return _GetCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoryProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCategoryRef on AutoDisposeProviderRef<Category?> {
  /// The parameter `categoryId` of this provider.
  int get categoryId;
}

class _GetCategoryProviderElement extends AutoDisposeProviderElement<Category?>
    with GetCategoryRef {
  _GetCategoryProviderElement(super.provider);

  @override
  int get categoryId => (origin as GetCategoryProvider).categoryId;
}

String _$categoryControllerHash() =>
    r'03ec5d51bea1147db0139fa68edaeefdacb11f70';

/// See also [CategoryController].
@ProviderFor(CategoryController)
final categoryControllerProvider = AutoDisposeAsyncNotifierProvider<
    CategoryController, List<Category>?>.internal(
  CategoryController.new,
  name: r'categoryControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoryControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CategoryController = AutoDisposeAsyncNotifier<List<Category>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
