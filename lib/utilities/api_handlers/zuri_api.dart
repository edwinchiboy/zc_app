// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/app/app.logger.dart';
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/models/api_response.dart';
import 'package:zurichat/models/channel_members.dart';
import 'package:zurichat/models/channel_model.dart';
import 'package:zurichat/models/channels_search_model.dart';
import 'package:zurichat/models/organization_model.dart';
import 'package:zurichat/models/user_search_model.dart';
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/utilities/api_handlers/api_utils.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/api_handlers/failures.dart';
import 'package:stacked_services/stacked_services.dart'
    hide FormData, MultipartFile;

import 'api.dart';
import 'dio_interceptors.dart';

class ZuriApi implements Api {
  final log = getLogger('ZuriApi');
  final dio = Dio();
  final snackbar = locator<SnackbarService>();

  StreamController<String> controller = StreamController.broadcast();
  ZuriApi(baseUrl) {
    dio.interceptors.add(DioInterceptor());
    dio.options.sendTimeout = 60000;
    dio.options.receiveTimeout = 60000;
    dio.options.baseUrl = baseUrl;
    log.i('Zuri Api constructed and DIO setup register');
  }

  Future<dynamic> get(
    String string, {
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    log.i('Making request to $string');
    try {
      final response = await dio.get(string.toString(),
          queryParameters: queryParameters,
          options: token == null
              ? null
              : Options(headers: {'Authorization': 'Bearer $token'}));

      log.i('Response from $string \n${response.data}');
      return ApiUtils.toApiResponse(response);
    } on DioError catch (e) {
      if (e.response!.data!['message'] == String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'],
        );
      } else if (e.response!.data!['message'] != String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'] ??
              e.response!.data['error'] ??
              errorOccurred,
        );
      }
      log.w(e.toString());
      handleApiError(e);
    } on SocketException {
      snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 10),
          variant: SnackbarType.failure,
          message: 'Please check your internet');
    }
  }

  Future<dynamic> post(
    String string, {
    required Map<String, dynamic> body,
    String? token,
  }) async {
    log.i('Making request to $string');
    try {
      final response = await dio.post(string,
          data: body,
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      log.i('Response from $string \n${response.data}');
      return ApiUtils.toApiResponse(response);
    } on DioError catch (e) {
      if (e.response!.data!['message'] == String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'],
        );
      } else if (e.response!.data!['message'] != String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'] ??
              e.response!.data['error'] ??
              errorOccurred,
        );
      }
      log.w(e.toString());
      handleApiError(e);
    } on SocketException {
      snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 10),
          variant: SnackbarType.failure,
          message: 'Please check your internet');
    }
  }

  @override
  Future<dynamic> postDM(
    String endpoint, {
    required Map<String, dynamic> body,
  }) async {
    log.i('Making request to $endpoint');
    try {
      final response = await dio.post(endpoint, data: body);

      log.i('Response from $endpoint \n${response.data}');
      return ApiUtils.toApiResponse(response);
    } on DioError catch (e) {
      snackbar.showCustomSnackBar(
        duration: const Duration(seconds: 3),
        variant: SnackbarType.failure,
        message: e.response!.data!['message'] ?? errorOccurred,
      );
      log.w(e.toString());
      handleApiError(e);
    }
  }

  Future getDM(String roomID, String orgId, token) async {
    try {
      final res =
          await dio.get('$dmsBaseUrl/v1/org/$orgId/rooms/$roomID/messages');
      log.i(res.data['data']);
      return res;
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  Future<dynamic> put(
    String string, {
    required Map<String, dynamic> body,
    String? token,
  }) async {
    log.i('Making request to $string');
    try {
      final response = await dio.put(string.toString(),
          data: body,
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      log.i('Response from $string \n${response.data}');
      return ApiUtils.toApiResponse(response);
    } on DioError catch (e) {
      if (e.response!.data!['message'] == String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'],
        );
      } else if (e.response!.data!['message'] != String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'] ??
              e.response!.data['error'] ??
              errorOccurred,
        );
      }
      log.w(e.toString());
      handleApiError(e);
    } on SocketException {
      snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 10),
          variant: SnackbarType.failure,
          message: 'Please check your internet');
    }
  }

  @override
  Future<ApiResponse?> patch(String path,
      {Map<String, dynamic>? body, String? token}) async {
    try {
      final res = await dio.patch(path,
          data: body,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return ApiUtils.toApiResponse(res);
    } on DioError catch (e) {
      if (e.response!.data!['message'] == String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'],
        );
      } else if (e.response!.data!['message'] != String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'] ??
              e.response!.data['error'] ??
              errorOccurred,
        );
      }
      log.w(e.toString());
      handleApiError(e);
    } on SocketException {
      snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 10),
          variant: SnackbarType.failure,
          message: 'Please check your internet');
    }
  }

  @override
  Future<ApiResponse?> delete(String string,
      {Map<String, dynamic>? body, String? token}) async {
    log.i('Making request to $string');
    try {
      final response = await dio.delete(
        string,
        data: body,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      log.i('Response from $string \n${response.data}');
      return ApiUtils.toApiResponse(response);
    } on DioError catch (e) {
      if (e.response!.data!['message'] == String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'],
        );
      } else if (e.response!.data!['message'] != String) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: e.response!.data!['message'] ??
              e.response!.data['error'] ??
              e.response!.data['detail'] ??
              errorOccurred,
        );
      }
      log.w(e.toString());
      handleApiError(e);
    } on SocketException {
      snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 10),
          variant: SnackbarType.failure,
          message: 'Please check your internet');
    }
  }

  /// -------------------------------------------------------------------------------------------

  /// THE API SERVICES

  /// LOGIN FLOW
  @override
  Future<dynamic> login(
      {required String email, required String password, token}) async {
    return await post("${coreBaseUrl}auth/login",
        body: {
          "email": email,
          "password": password,
        },
        token: token);
  }

  @override
  Future<dynamic> signUp(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String displayName,
      required String phoneNumber,
      required String token}) async {
    return await post(
      "$coreBaseUrl/users",
      body: {
        'first_name': firstName,
        'last_name': lastName,
        'display_name': displayName,
        'email': email,
        'password': password,
        'phone': phoneNumber,
      },
    );
  }

  /// Fetches a list of organizations that exist in the Zuri database
  /// This does not fetch the Organization the user belongs to
  /// To implement that use `getJoinedOrganizations()`
  @override
  Future<List<OrganizationModel>> fetchListOfOrganizations(token) async {
    try {
      final res = await dio.get(
        '$apiBaseUrl/organizations',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      log.i(res.data);
      return (res.data?['data'] as List)
          .map((e) => OrganizationModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return [];
  }

  @override

  ///Get the list of Organization the user has joined
  Future<List<OrganizationModel>> getJoinedOrganizations(
      token, String email) async {
    try {
      final res = await dio.get('$channelsBaseUrl/users/$email/organizations',
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ));
      log.i("RESPONSE !!${res.data}");
      return (res.data?['data'] as List)
          .map((e) => OrganizationModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return [];
  }

  /// Fetches information on a particular Organization. It takes a parameter
  /// `id` which is the id of the organization
  @override
  Future fetchOrganizationInfo(String id, token) async {
    try {
      final res = await dio.get('$channelsBaseUrl/organizations/$id',
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ));
      log.i(res.data);
      return OrganizationModel.fromJson(res.data?['data']);
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// takes in a `url` and returns a Organization that matches the url
  /// use this url for testing `Zurichat-fsp1856.Zurichat.com`
  @override
  Future fetchOrganizationByUrl(String url, token) async {
    try {
      final res = await dio.get('/organizations/url/$url',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      log.i(res.data);
      return OrganizationModel.fromJson(json.decode(res.data['data']));
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  ///Limited to the admin who created the org
  ///
  ///This should be used to add users to an organization by the admin user alone
  /// takes in a `Organization id` and joins the Organization
  @override
  Future<bool> joinOrganization(String orgId, String email, token) async {
    final res = await dio.post('$channelsBaseUrl/organizations/$orgId/members',
        data: {'user_email': email},
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ));
    if (res.statusCode == 200) {
      return true;
    }
    return false;
  }

  /// This method creates an organization. Creator email `email` must be present
  @override
  Future<String> createOrganization(String email, token) async {
    try {
      final res = await dio.post('$channelsBaseUrl/organizations',
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
          data: {'creator_email': email});
      return res.data['data']['InsertedID'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return '';
  }

  /// Updates an organization's URL. The organization's id `orgId` must not be
  /// null or empty. Url must not begin with `https` or `http`

  @override
  Future updateOrgUrl(String orgId, String url, token) async {
    try {
      final res = await dio.patch(
        '${coreBaseUrl}organizations/$orgId/url',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
        data: {'url': url},
      );
      return res.data['message'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Updates an organization's name. The organization's id `orgId` must not be
  /// null or empty
  @override
  Future updateOrgName(String orgId, String name, token) async {
    try {
      final res = await dio.patch(
        '${coreBaseUrl}organizations/$orgId/name',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
        data: {'organization_name': name},
      );
      return res.data['message'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Updates an organization's logo. The organization's id `orgId` must not be
  /// null or empty
  @override
  Future updateOrgLogo(String orgId, File image, token) async {
    try {
      var formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          image.path,
          filename: image.path.split(Platform.pathSeparator).last,
          contentType: MediaType('image', 'jpeg'),
        ),
      });
      final res = await dio.patch(
        '${coreBaseUrl}organizations/$orgId/logo',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
        data: formData,
      );
      return res.data['message'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  @override
  Future<void> addMemberToChannel(
      String channelId, String orgId, String userId, token) async {
    await post(
      "$channelsBaseUrl/v1/$orgId/channels/$channelId/members/",
      //  "/614679ee1a5607b13c00bcb7/channels/$channelId/members/",
      token: token,
      body: {
        "_id": userId,
        "role_id": "",
        "is_admin": false,
        "notifications": {
          "web": "nothing",
          "mobile": "mentions",
          "same_for_mobile": true,
          "mute": false
        }
      },
    );
  }

  /// Add members to an organization either through invite
  /// or by calls
  @override
  Future addMemberToOrganization(String orgId, String email, token) async {
    final res = await dio.post(
      '$channelsBaseUrl/organizations/$orgId/members',
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
      data: {'user_email': email},
    );
    return res.data['message'];
  }

  /// FETCHING MEMBERS

  @override
  Future<List<UserSearch>> fetchMembersInOrganization(
      String orgId, token) async {
    final res = await dio.get(
      '$channelsBaseUrl/organizations/$orgId/members',
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
    return (res.data['data'] as List)
        .map((e) => UserSearch.fromJson(e))
        .toList();
  }

  /// THIS BASICALLY HANDLES CHANNEL SOCKETS FOR RTC
  /// THIS BASICALLY HANDLES CHANNEL SOCKETS FOR RTC

  @override
  Future getChannelSocketId(String channelId, String orgId, token) async {
    try {
      final res = await get(
          '$websocketUrl/v1/$orgId/channels/$channelId/socket/',
          token: token);
      log.i(res.data['socket_name']);
      return res.data['socket_name'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  // THIS SERVICE IS FOR JOINED ROOMS FOR ACTIVE DMs
  Future<List> getActiveRooms(String orgId, String userId, token) async {
    try {
      final res = await get(
              '$dmsBaseUrl/api/v1/org/$orgId/users/$userId/rooms/',
              token: token),
          joinedChannels = res?.data['joined_rooms'] ?? [];
      log.i(joinedChannels);
      return joinedChannels;
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return [];
  }

  // THIS SERVICE IS FOR THE HOME SCREEN ACTIVE DMs
  @override
  Future<List> getActiveDms(String orgId, token) async {
    try {
      final res =
              await get('$channelsBaseUrl/v1/$orgId/channels/', token: token),
          joinedChannels = res?.data ?? [];
      log.i(joinedChannels);
      return joinedChannels;
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }

    return [];
  }

  // Joins a channel using the parameters below
  @override
  Future<Map> joinChannel(
      String channelId, String userId, String orgId, token) async {
    try {
      final res = await post(
          '$channelsBaseUrl/$orgId/channels/$channelId/members/',
          token: token,
          body: {
            '_id': userId,
            'is_admin': true,
          });
      log.i(res.data);
      return res.data;
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return {};
  }

  /// Getting Channel messages is this function below.
  /// The Channel ID must not be null
  @override
  Future getChannelMessages(String channelId, String orgId, token) async {
    try {
      final res =
          await dio.get('$channelsBaseUrl/$orgId/channels/$channelId/messages/',
              options: Options(
                headers: {'Authorization': 'Bearer $token'},
              ));
      log.i(res.data['data']);
      return res.data['data'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Sends channels message
  /// Channel ID, User ID, Org ID must not be null
  @override
  Future sendChannelMessages(String channelId, String userId, String orgId,
      String message, token) async {
    try {
      final res = await post(
        '$channelsBaseUrl/v1/$orgId/channels/$channelId/messages/',
        body: {'user_id': userId, 'content': message},
        token: token,
      );
      log.i(res.data['data']);
      return res.data['data'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  Future<List> getRepliesToMessages(channelMessageId, orgId) async {
    List messageReplies;
    try {
      final res = await get(
        '/v1/$orgId/messages/$channelMessageId/threads/',
      );
      messageReplies = res?.data ?? [];
      log.i('>>>>>>>>>>>ResponseFromDB>>>>>>>>>>>>>>>> $res');
      log.i('>>>>>>>>>>>MessageReplies>>>>>>>>>>>>>>>> $messageReplies');
    } on Exception catch (e) {
      log.e(e.toString());
      return [];
    }

    return messageReplies;
  }

  Future<bool> addReplyToMessage(String? channelMessageId, content, files,
      orgId, userId, channelId) async {
    log.i('channelll Iddd >>>>>>>> $channelId');
    try {
      final res = await post(
        '/v1/$orgId/messages/$channelMessageId/threads/?channel_id=$channelId',
        body: {
          'user_id': userId,
          'content': content,
          'files': files ?? [],
        },
      );
      controller.sink.add('Reply sent successfully');
      log.i('>>>>>>>>>>>>Adding Reply>>>>>$res');
      return true;
    } on Exception catch (e) {
      log.e(e.toString());
      return false;
    }
  }

  /// Fetches channels from an organization
  /// Org ID must not be null
  @override
  Future<List<ChannelModel>> fetchChannel(String orgId, token) async {
    try {
      final res = await get(
        '$channelsBaseUrl/v1/$orgId/channels/',
        token: token,
      );
      log.i(res.data);
      return (res?.data as List).map((e) => ChannelModel.fromJson(e)).toList();
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return [];
  }

  /// Creates channels into the organization
  /// All are required
  @override
  Future<bool> createChannels(
      {required String name,
      required String owner,
      required String email,
      required String orgId,
      required String description,
      required bool private,
      token}) async {
    try {
      final res = await post('$channelsBaseUrl/v1/$orgId/channels/',
          body: {
            'name': name,
            'owner': owner,
            'description': description,
            'private': private,
          },
          token: token);
      log.i(res.data.toString());
      if (res?.statusCode == 201 || res?.statusCode == 200) {
        controller.sink.add('created channel');
        return true;
      }
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
    return false;
  }

  /// Gets Channel pages
  @override
  getChannelPage(String id, String orgId, token) async {
    try {
      final response =
          await get('$channelsBaseUrl/v1/$orgId/channels/$id/', token: token);
      return ChannelModel.fromJson(json.decode(response.data));
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Fetches channel messages
  @override
  getChannelMembers(String id, String orgId, token) async {
    try {
      final res = await get('$channelsBaseUrl/v1/$orgId/channels/$id/members/',
          token: token);
      log.i(res.data);
      return (res?.data as List)
          .map((e) => ChannelMembermodel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Invites a user to the organzization
  /// This endpoint would sent the user a mail with the UUID
  inviteToOrganizationWithNormalMail(
    String organizationId,
    body,
    token,
  ) async {
    try {
      final res = await post(
        'organizations/$organizationId/send-invite',
        body: body,
        token: token,
      );
      log.i(res);
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Themes for the mobile app
  @override
  List<ThemeData> getThemes() {
    return [
      ThemeData.light().copyWith(
        primaryColor: AppColors.zuriPrimaryColor,
        appBarTheme: const AppBarTheme(
          color: AppColors.whiteColor,
          iconTheme: IconThemeData(color: AppColors.blackColor),
          textTheme: TextTheme(
            headline6: TextStyle(color: AppColors.blackColor, fontSize: 20.0),
          ),
          actionsIconTheme: IconThemeData(color: AppColors.blackColor),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
          backgroundColor: AppColors.zuriPrimaryColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.zuriPrimaryColor,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: AppColors.zuriPrimaryColor),
      ),
      ThemeData.light(),
      ThemeData.dark(),
      ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: AppColors.kimbieAccent,
          iconTheme: IconThemeData(color: AppColors.blackColor),
          textTheme: TextTheme(
            headline6: TextStyle(color: AppColors.blackColor, fontSize: 20.0),
          ),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
          backgroundColor: AppColors.kimbieAccent,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.kimbieAccent,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: AppColors.kimbieAccent),
      ),
    ];
  }

  /// Basically send get requests
  @override
  void sendGetRequest(endpoint) async {
    final response = await dio.get(apiBaseUrl + endpoint);
    jsonDecode(response.data);
  }

  @override
  Future sendPostRequest(body, endpoint) async {
    try {
      final response = await dio.post(
        apiBaseUrl + endpoint,
        data: json.encode(body),
      );

      final result = response.data;
      return result;
    } on DioError catch (e) {
      handleApiError(e);
    }
  }

  //!Adjust the patch function as needed
  @override
  Future sendPatchRequest(body, endpoint, userId) async {
    try {
      final response =
          await dio.patch(apiBaseUrl + endpoint, data: json.encode(body));
      final result = response.data;
      return result;
    } on DioError catch (e) {
      handleApiError(e);
    }
  }

  /// Fetches a list of  all channels in that organization
  @override
  Future allChannelsList(String currentOrgId, token) async {
    try {
      final res = await dio.get('$channelsBaseUrl/v1/$currentOrgId/channels/',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      log.i(res.data['data']);
      return ChannelsSearch.fromJson(json.decode(res.data));
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Fetches a list of channels that a user is, in that organization
  @override
  Future joinedChannelsList(
      String currentOrgId, String currentUserId, token) async {
    try {
      final res = await dio.get(
          '$channelsBaseUrl/api/v1/$currentOrgId/channels/users/$currentUserId/',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      log.i(res.data);
      return ChannelsSearch.fromJson(json.decode(res.data));
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  /// Fetches a list of members in that organization
  @override
  Future fetchListOfMembers(
      String currentOrgId, String channelId, token) async {
    try {
      final res = await dio.get(
          '$channelsBaseUrl/vi/$currentOrgId/channels/$channelId/members/',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      log.i(res.data);
      return NewUser.fromJson(json.decode(res.data['data']));
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
    }
  }

  @override
  Failure handleApiError(DioError e) {
    if (e.type == DioErrorType.cancel) {
      return InputFailure(errorMessage: e.message);
    } else if (e.type == DioErrorType.connectTimeout) {
      return NetworkFailure();
    } else if (e.type == DioErrorType.receiveTimeout) {
      return NetworkFailure();
    } else if (e.type == DioErrorType.sendTimeout) {
      return NetworkFailure();
    } else if (e.type == DioErrorType.response) {
      return ServerFailure(error: e.message);
    } else if (e.type == DioErrorType.other) {
      return UnknownFailure();
    } else {
      return UnknownFailure();
    }
  }

  @override
  Future<String> uploadImage(
    File? image, {
    required String token,
    required String pluginId,
  }) async {
    var formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        image!.path,
        filename: image.path.split(Platform.pathSeparator).last,
        contentType: MediaType("image", "jpeg"),
      ),
    });
    try {
      final res = await dio.post(
        '${coreBaseUrl}upload/file/$pluginId',
        options: Options(
          headers: {'Authorization': 'Bearer $token', 'token': 'Bearer $token'},
        ),
        data: formData,
      );
      log.i(res.data);
      return res.data['data']['file_url'];
    } on DioError catch (e) {
      log.w(e.toString());
      handleApiError(e);
      return "error uploading the image";
    }
  }
}
