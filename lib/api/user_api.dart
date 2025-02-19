//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteUsersInput] deleteUsersInput:
  Future<Response> deleteUsersWithHttpInfo({ DeleteUsersInput? deleteUsersInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user';

    // ignore: prefer_final_locals
    Object? postBody = deleteUsersInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete users
  ///
  /// Parameters:
  ///
  /// * [DeleteUsersInput] deleteUsersInput:
  Future<void> deleteUsers({ DeleteUsersInput? deleteUsersInput, }) async {
    final response = await deleteUsersWithHttpInfo( deleteUsersInput: deleteUsersInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all users except the user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/all';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all users except the user
  Future<List<ModelsUser>?> getAllUsers() async {
    final response = await getAllUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsUser>') as List)
        .cast<ModelsUser>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get user by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> getUserByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user by ID
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<ModelsUser?> getUserById(int id,) async {
    final response = await getUserByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsUser',) as ModelsUser;
    
    }
    return null;
  }

  /// Search users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<Response> searchUsersWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'username', username));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search users
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<List<ModelsUser>?> searchUsers(String username,) async {
    final response = await searchUsersWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsUser>') as List)
        .cast<ModelsUser>()
        .toList(growable: false);

    }
    return null;
  }
}
