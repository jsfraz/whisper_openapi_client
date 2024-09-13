# whisper_openapi_client
Secure private self-hosted end-to-end encryption messaging server.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.8.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://josefraz.cz](https://josefraz.cz)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  whisper_openapi_client:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  whisper_openapi_client:
    path: /path/to/whisper_openapi_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:whisper_openapi_client/api.dart';


final api_instance = UsersApi();
final createUserInput = CreateUserInput(); // CreateUserInput | 

try {
    api_instance.createUser(createUserInput);
} catch (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*UsersApi* | [**createUser**](doc//UsersApi.md#createuser) | **POST** /api/user | Create user


## Documentation For Models

 - [CreateUserInput](doc//CreateUserInput.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: HTTP Bearer authentication


## Author

razj@josefraz.cz

