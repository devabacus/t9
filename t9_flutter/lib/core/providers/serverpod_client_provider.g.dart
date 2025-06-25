// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serverpod_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serverpodConfigHash() => r'580969447b1b4cb014b8c45c4478996b167171fc';

/// See also [serverpodConfig].
@ProviderFor(serverpodConfig)
final serverpodConfigProvider = AutoDisposeProvider<ServerpodConfig>.internal(
  serverpodConfig,
  name: r'serverpodConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$serverpodConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServerpodConfigRef = AutoDisposeProviderRef<ServerpodConfig>;
String _$serverpodClientHash() => r'3a009c9a4976188403e67f85f82e3163ac2896da';

/// See also [serverpodClient].
@ProviderFor(serverpodClient)
final serverpodClientProvider = AutoDisposeProvider<Client>.internal(
  serverpodClient,
  name: r'serverpodClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$serverpodClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServerpodClientRef = AutoDisposeProviderRef<Client>;
String _$serverpodConnectionCheckHash() =>
    r'0714dcd7a88bb5561a6fbdce90d3a57155576d82';

/// See also [serverpodConnectionCheck].
@ProviderFor(serverpodConnectionCheck)
final serverpodConnectionCheckProvider =
    AutoDisposeFutureProvider<bool>.internal(
      serverpodConnectionCheck,
      name: r'serverpodConnectionCheckProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$serverpodConnectionCheckHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServerpodConnectionCheckRef = AutoDisposeFutureProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
