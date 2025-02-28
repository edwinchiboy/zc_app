// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../models/channel_members.dart';
import '../models/channel_model.dart';
import '../models/organization_model.dart';
import '../models/user_model.dart';
import '../models/user_post.dart';
import '../ui/nav_pages/dm_page/dm_search_find_page.dart';
import '../ui/nav_pages/home_page/home_page.dart';
import '../ui/nav_pages/nav_bar/nav_bar_view.dart';
import '../ui/nav_pages/plugin_page/plugin_view.dart';
import '../ui/view/add_people/add_people_view.dart';
import '../ui/view/advanced/advanced_view.dart';
import '../ui/view/channel/add_people/channel_add_people_view.dart';
import '../ui/view/channel/channel_info/channel_info_view.dart';
import '../ui/view/channel/channel_list/channels_view.dart';
import '../ui/view/channel/channel_notification/channel_notification_view.dart';
import '../ui/view/channel/channel_view/channel_page_view.dart';
import '../ui/view/channel/edit_channel/edit_channel_view.dart';
import '../ui/view/channel/new_channel/new_channel.dart';
import '../ui/view/channel/pinned_messages/pinned_messages_view.dart';
import '../ui/view/channel/share_message/share_message_view.dart';
import '../ui/view/clear_after/clear_after_view.dart';
import '../ui/view/direct_message/direct_message.dart';
import '../ui/view/dm_search/dm_search_view.dart';
import '../ui/view/dm_user/dm_user_view.dart';
import '../ui/view/do_not_disturb/do_not_disturb_view.dart';
import '../ui/view/draft/draft_view.dart';
import '../ui/view/edit_profile/edit_profile_view.dart';
import '../ui/view/file_search/file_search_view.dart';
import '../ui/view/forgot_password/forgot_password_email/forgot_password_email_view.dart';
import '../ui/view/forgot_password/forgot_password_new_password/forgot_password_newview.dart';
import '../ui/view/forgot_password/forgot_password_otp/forgot_password_otpview.dart';
import '../ui/view/general_search/general_search_view.dart';
import '../ui/view/jump_to_view/jump_to_view.dart';
import '../ui/view/language_and_region/language_and_region_view.dart';
import '../ui/view/login/login_view.dart';
import '../ui/view/notifications/notifications_view.dart';
import '../ui/view/onboarding/onboading_view.dart';
import '../ui/view/organization/add_organization/add_organization_view.dart';
import '../ui/view/organization/create_organization/create_organization.dart';
import '../ui/view/organization/invite_to_organization/admin_permissions/create_invite_link.dart';
import '../ui/view/organization/invite_to_organization/admin_permissions/invite_via_email.dart';
import '../ui/view/organization/invite_to_organization/invitation_sent.dart';
import '../ui/view/organization/invite_to_organization/invite_via_contact/import_contact.dart';
import '../ui/view/organization/invite_to_organization/invite_via_email/invite_via_email.dart';
import '../ui/view/organization/organization_different_email/different_email_organization_view.dart';
import '../ui/view/organization/organization_settings/organization_logo.dart';
import '../ui/view/organization/organization_settings/organization_name_url.dart';
import '../ui/view/organization/organization_settings/organization_settings_view.dart';
import '../ui/view/organization/organization_url/organization_url_view.dart';
import '../ui/view/organization/organization_view/organization_view.dart';
import '../ui/view/organization/select_email/select_email_view.dart';
import '../ui/view/otp/otp_view.dart';
import '../ui/view/plugins/add_plugin_view.dart';
import '../ui/view/popup_notification/popup_notification.dart';
import '../ui/view/preference/preference_view.dart';
import '../ui/view/profile_page/profile_page_view.dart';
import '../ui/view/saved_items/saved_items_view.dart';
import '../ui/view/set_status/set_status_view.dart';
import '../ui/view/sign_up/sign_up_view.dart';
import '../ui/view/splashscreen/splashscreen.dart';
import '../ui/view/start_dm/start_dm_view.dart';
import '../ui/view/static_pages/terms_and_conditions/terms_and_conditions_view.dart';
import '../ui/view/threads/all_threads/threads_view.dart';
import '../ui/view/threads/thread_detail/thread_detail_view.dart';
import '../ui/view/user_search/user_search_view.dart';
import '../ui/view/webview_page/webview_page.dart';
import '../utilities/enums.dart';

class Routes {
  static const String channelAddPeopleView = '/channel-add-people-view';
  static const String navBarView = '/nav-bar-view';
  static const String onboardingView = '/onboarding-view';
  static const String loginView = '/login-view';
  static const String oTPView = '/o-tp-view';
  static const String signUpView = '/sign-up-view';
  static const String organizationView = '/organization-view';
  static const String channelList = '/channel-list';
  static const String forgotPasswordEmailView = '/forgot-password-email-view';
  static const String forgotPasswordOtpView = '/forgot-password-otp-view';
  static const String forgotPasswordNewView = '/forgot-password-new-view';
  static const String channelNotificationView = '/channel-notification-view';
  static const String newChannel = '/new-channel';
  static const String homePage = '/home-page';
  static const String addPeopleView = '/add-people-view';
  static const String dmSearch = '/dm-search';
  static const String jumpToView = '/jump-to-view';
  static const String dmUserView = '/dm-user-view';
  static const String dmScreen = '/dm-screen';
  static const String splashview = '/';
  static const String pluginPage = '/plugin-page';
  static const String useDifferentEmailView = '/use-different-email-view';
  static const String setStatusView = '/set-status-view';
  static const String profilePageView = '/profile-page-view';
  static const String preferenceView = '/preference-view';
  static const String languageAndRegionModelView =
      '/language-and-region-model-view';
  static const String savedItemsView = '/saved-items-view';
  static const String notificationsView = '/notifications-view';
  static const String advancedView = '/advanced-view';
  static const String clearAfterView = '/clear-after-view';
  static const String doNotDisturbView = '/do-not-disturb-view';
  static const String editProfileView = '/edit-profile-view';
  static const String popUpNotificationsView = '/pop-up-notifications-view';
  static const String pinnedMessagesView = '/pinned-messages-view';
  static const String selectEmail = '/select-email';
  static const String addOrganizationView = '/add-organization-view';
  static const String createOrganization = '/create-organization';
  static const String generalSearchView = '/general-search-view';
  static const String fileSearchView = '/file-search-view';
  static const String draftView = '/draft-view';
  static const String threadsView = '/threads-view';
  static const String threadDetailView = '/thread-detail-view';
  static const String userSearchView = '/user-search-view';
  static const String editChannelPageView = '/edit-channel-page-view';
  static const String startDmView = '/start-dm-view';
  static const String organizationUrlView = '/organization-url-view';
  static const String channelPageView = '/channel-page-view';
  static const String channelInfoView = '/channel-info-view';
  static const String directMessage = '/direct-message';
  static const String termsAndConditionsView = '/terms-and-conditions-view';
  static const String webViewPage = '/web-view-page';
  static const String inviteViaEmail = '/invite-via-email';
  static const String inviteViaEmailAdmin = '/invite-via-email-admin';
  static const String importContacts = '/import-contacts';
  static const String createInviteLink = '/create-invite-link';
  static const String invitationSent = '/invitation-sent';
  static const String shareMessageView = '/share-message-view';
  static const String organizationSettingsView = '/organization-settings-view';
  static const String organizationNameUrl = '/organization-name-url';
  static const String organizationLogo = '/organization-logo';
  static const String addPluginView = '/add-plugin-view';
  static const all = <String>{
    channelAddPeopleView,
    navBarView,
    onboardingView,
    loginView,
    oTPView,
    signUpView,
    organizationView,
    channelList,
    forgotPasswordEmailView,
    forgotPasswordOtpView,
    forgotPasswordNewView,
    channelNotificationView,
    newChannel,
    homePage,
    addPeopleView,
    dmSearch,
    jumpToView,
    dmUserView,
    dmScreen,
    splashview,
    pluginPage,
    useDifferentEmailView,
    setStatusView,
    profilePageView,
    preferenceView,
    languageAndRegionModelView,
    savedItemsView,
    notificationsView,
    advancedView,
    clearAfterView,
    doNotDisturbView,
    editProfileView,
    popUpNotificationsView,
    pinnedMessagesView,
    selectEmail,
    addOrganizationView,
    createOrganization,
    generalSearchView,
    fileSearchView,
    draftView,
    threadsView,
    threadDetailView,
    userSearchView,
    editChannelPageView,
    startDmView,
    organizationUrlView,
    channelPageView,
    channelInfoView,
    directMessage,
    termsAndConditionsView,
    webViewPage,
    inviteViaEmail,
    inviteViaEmailAdmin,
    importContacts,
    createInviteLink,
    invitationSent,
    shareMessageView,
    organizationSettingsView,
    organizationNameUrl,
    organizationLogo,
    addPluginView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.channelAddPeopleView, page: ChannelAddPeopleView),
    RouteDef(Routes.navBarView, page: NavBarView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.oTPView, page: OTPView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.organizationView, page: OrganizationView),
    RouteDef(Routes.channelList, page: ChannelList),
    RouteDef(Routes.forgotPasswordEmailView, page: ForgotPasswordEmailView),
    RouteDef(Routes.forgotPasswordOtpView, page: ForgotPasswordOtpView),
    RouteDef(Routes.forgotPasswordNewView, page: ForgotPasswordNewView),
    RouteDef(Routes.channelNotificationView, page: ChannelNotificationView),
    RouteDef(Routes.newChannel, page: NewChannel),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.addPeopleView, page: AddPeopleView),
    RouteDef(Routes.dmSearch, page: DmSearch),
    RouteDef(Routes.jumpToView, page: JumpToView),
    RouteDef(Routes.dmUserView, page: DmUserView),
    RouteDef(Routes.dmScreen, page: DmScreen),
    RouteDef(Routes.splashview, page: Splashview),
    RouteDef(Routes.pluginPage, page: PluginPage),
    RouteDef(Routes.useDifferentEmailView, page: UseDifferentEmailView),
    RouteDef(Routes.setStatusView, page: SetStatusView),
    RouteDef(Routes.profilePageView, page: ProfilePageView),
    RouteDef(Routes.preferenceView, page: PreferenceView),
    RouteDef(Routes.languageAndRegionModelView,
        page: LanguageAndRegionModelView),
    RouteDef(Routes.savedItemsView, page: SavedItemsView),
    RouteDef(Routes.notificationsView, page: NotificationsView),
    RouteDef(Routes.advancedView, page: AdvancedView),
    RouteDef(Routes.clearAfterView, page: ClearAfterView),
    RouteDef(Routes.doNotDisturbView, page: DoNotDisturbView),
    RouteDef(Routes.editProfileView, page: EditProfileView),
    RouteDef(Routes.popUpNotificationsView, page: PopUpNotificationsView),
    RouteDef(Routes.pinnedMessagesView, page: PinnedMessagesView),
    RouteDef(Routes.selectEmail, page: SelectEmail),
    RouteDef(Routes.addOrganizationView, page: AddOrganizationView),
    RouteDef(Routes.createOrganization, page: CreateOrganization),
    RouteDef(Routes.generalSearchView, page: GeneralSearchView),
    RouteDef(Routes.fileSearchView, page: FileSearchView),
    RouteDef(Routes.draftView, page: DraftView),
    RouteDef(Routes.threadsView, page: ThreadsView),
    RouteDef(Routes.threadDetailView, page: ThreadDetailView),
    RouteDef(Routes.userSearchView, page: UserSearchView),
    RouteDef(Routes.editChannelPageView, page: EditChannelPageView),
    RouteDef(Routes.startDmView, page: StartDmView),
    RouteDef(Routes.organizationUrlView, page: OrganizationUrlView),
    RouteDef(Routes.channelPageView, page: ChannelPageView),
    RouteDef(Routes.channelInfoView, page: ChannelInfoView),
    RouteDef(Routes.directMessage, page: DirectMessage),
    RouteDef(Routes.termsAndConditionsView, page: TermsAndConditionsView),
    RouteDef(Routes.webViewPage, page: WebViewPage),
    RouteDef(Routes.inviteViaEmail, page: InviteViaEmail),
    RouteDef(Routes.inviteViaEmailAdmin, page: InviteViaEmailAdmin),
    RouteDef(Routes.importContacts, page: ImportContacts),
    RouteDef(Routes.createInviteLink, page: CreateInviteLink),
    RouteDef(Routes.invitationSent, page: InvitationSent),
    RouteDef(Routes.shareMessageView, page: ShareMessageView),
    RouteDef(Routes.organizationSettingsView, page: OrganizationSettingsView),
    RouteDef(Routes.organizationNameUrl, page: OrganizationNameUrl),
    RouteDef(Routes.organizationLogo, page: OrganizationLogo),
    RouteDef(Routes.addPluginView, page: AddPluginView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    ChannelAddPeopleView: (data) {
      var args = data.getArgs<ChannelAddPeopleViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ChannelAddPeopleView(
          key: args.key,
          channelId: args.channelId,
          channelName: args.channelName,
        ),
        settings: data,
      );
    },
    NavBarView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const NavBarView(),
        settings: data,
      );
    },
    OnboardingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OnboardingView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    OTPView: (data) {
      var args = data.getArgs<OTPViewArguments>(
        orElse: () => OTPViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OTPView(key: args.key),
        settings: data,
      );
    },
    SignUpView: (data) {
      var args = data.getArgs<SignUpViewArguments>(
        orElse: () => SignUpViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(key: args.key),
        settings: data,
      );
    },
    OrganizationView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OrganizationView(),
        settings: data,
      );
    },
    ChannelList: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ChannelList(),
        settings: data,
      );
    },
    ForgotPasswordEmailView: (data) {
      var args = data.getArgs<ForgotPasswordEmailViewArguments>(
        orElse: () => ForgotPasswordEmailViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ForgotPasswordEmailView(key: args.key),
        settings: data,
      );
    },
    ForgotPasswordOtpView: (data) {
      var args = data.getArgs<ForgotPasswordOtpViewArguments>(
        orElse: () => ForgotPasswordOtpViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ForgotPasswordOtpView(key: args.key),
        settings: data,
      );
    },
    ForgotPasswordNewView: (data) {
      var args = data.getArgs<ForgotPasswordNewViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ForgotPasswordNewView(
          key: args.key,
          otp: args.otp,
        ),
        settings: data,
      );
    },
    ChannelNotificationView: (data) {
      var args = data.getArgs<ChannelNotificationViewArguments>(
        orElse: () => ChannelNotificationViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ChannelNotificationView(
          key: args.key,
          channelName: args.channelName,
        ),
        settings: data,
      );
    },
    NewChannel: (data) {
      var args = data.getArgs<NewChannelArguments>(
        orElse: () => NewChannelArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NewChannel(key: args.key),
        settings: data,
      );
    },
    HomePage: (data) {
      var args = data.getArgs<HomePageArguments>(
        orElse: () => HomePageArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomePage(
          key: args.key,
          organizationLogo: args.organizationLogo,
        ),
        settings: data,
      );
    },
    AddPeopleView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AddPeopleView(),
        settings: data,
      );
    },
    DmSearch: (data) {
      var args = data.getArgs<DmSearchArguments>(
        orElse: () => DmSearchArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DmSearch(key: args.key),
        settings: data,
      );
    },
    JumpToView: (data) {
      var args = data.getArgs<JumpToViewArguments>(
        orElse: () => JumpToViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => JumpToView(key: args.key),
        settings: data,
      );
    },
    DmUserView: (data) {
      String args = data.getArgs(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DmUserView(friendID: args),
        settings: data,
      );
    },
    DmScreen: (data) {
      var args = data.getArgs<DmScreenArguments>(
        orElse: () => DmScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DmScreen(key: args.key),
        settings: data,
      );
    },
    Splashview: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const Splashview(),
        settings: data,
      );
    },
    PluginPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PluginPage(),
        settings: data,
      );
    },
    UseDifferentEmailView: (data) {
      var args = data.getArgs<UseDifferentEmailViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => UseDifferentEmailView(
          key: args.key,
          method: args.method,
        ),
        settings: data,
      );
    },
    SetStatusView: (data) {
      var args = data.getArgs<SetStatusViewArguments>(
        orElse: () => SetStatusViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SetStatusView(key: args.key),
        settings: data,
      );
    },
    ProfilePageView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ProfilePageView(),
        settings: data,
      );
    },
    PreferenceView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PreferenceView(),
        settings: data,
      );
    },
    LanguageAndRegionModelView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LanguageAndRegionModelView(),
        settings: data,
      );
    },
    SavedItemsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SavedItemsView(),
        settings: data,
      );
    },
    NotificationsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const NotificationsView(),
        settings: data,
      );
    },
    AdvancedView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AdvancedView(),
        settings: data,
      );
    },
    ClearAfterView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ClearAfterView(),
        settings: data,
      );
    },
    DoNotDisturbView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const DoNotDisturbView(),
        settings: data,
      );
    },
    EditProfileView: (data) {
      var args = data.getArgs<EditProfileViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EditProfileView(
          key: args.key,
          user: args.user,
        ),
        settings: data,
      );
    },
    PopUpNotificationsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PopUpNotificationsView(),
        settings: data,
      );
    },
    PinnedMessagesView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PinnedMessagesView(),
        settings: data,
      );
    },
    SelectEmail: (data) {
      var args = data.getArgs<SelectEmailArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SelectEmail(
          key: args.key,
          method: args.method,
        ),
        settings: data,
      );
    },
    AddOrganizationView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AddOrganizationView(),
        settings: data,
      );
    },
    CreateOrganization: (data) {
      var args = data.getArgs<CreateOrganizationArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateOrganization(
          key: args.key,
          email: args.email,
        ),
        settings: data,
      );
    },
    GeneralSearchView: (data) {
      var args = data.getArgs<GeneralSearchViewArguments>(
        orElse: () => GeneralSearchViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GeneralSearchView(key: args.key),
        settings: data,
      );
    },
    FileSearchView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const FileSearchView(),
        settings: data,
      );
    },
    DraftView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const DraftView(),
        settings: data,
      );
    },
    ThreadsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ThreadsView(),
        settings: data,
      );
    },
    ThreadDetailView: (data) {
      var args = data.getArgs<ThreadDetailViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ThreadDetailView(
          args.userPost,
          key: args.key,
        ),
        settings: data,
      );
    },
    UserSearchView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const UserSearchView(),
        settings: data,
      );
    },
    EditChannelPageView: (data) {
      var args = data.getArgs<EditChannelPageViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EditChannelPageView(
          key: args.key,
          channelName: args.channelName,
          channelId: args.channelId,
        ),
        settings: data,
      );
    },
    StartDmView: (data) {
      var args = data.getArgs<StartDmViewArguments>(
        orElse: () => StartDmViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => StartDmView(key: args.key),
        settings: data,
      );
    },
    OrganizationUrlView: (data) {
      var args = data.getArgs<OrganizationUrlViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OrganizationUrlView(
          key: args.key,
          email: args.email,
        ),
        settings: data,
      );
    },
    ChannelPageView: (data) {
      var args = data.getArgs<ChannelPageViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ChannelPageView(
          key: args.key,
          channelName: args.channelName,
          channelId: args.channelId,
          membersCount: args.membersCount,
          public: args.public,
        ),
        settings: data,
      );
    },
    ChannelInfoView: (data) {
      var args = data.getArgs<ChannelInfoViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ChannelInfoView(
          key: args.key,
          numberOfMembers: args.numberOfMembers,
          channelMembers: args.channelMembers,
          channelDetail: args.channelDetail,
          channelName: args.channelName,
        ),
        settings: data,
      );
    },
    DirectMessage: (data) {
      var args = data.getArgs<DirectMessageArguments>(
        orElse: () => DirectMessageArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DirectMessage(
          key: args.key,
          username: args.username,
        ),
        settings: data,
      );
    },
    TermsAndConditionsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TermsAndConditionsView(),
        settings: data,
      );
    },
    WebViewPage: (data) {
      var args = data.getArgs<WebViewPageArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => WebViewPage(
          name: args.name,
          url: args.url,
          key: args.key,
        ),
        settings: data,
      );
    },
    InviteViaEmail: (data) {
      var args = data.getArgs<InviteViaEmailArguments>(
        orElse: () => InviteViaEmailArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => InviteViaEmail(key: args.key),
        settings: data,
      );
    },
    InviteViaEmailAdmin: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const InviteViaEmailAdmin(),
        settings: data,
      );
    },
    ImportContacts: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ImportContacts(),
        settings: data,
      );
    },
    CreateInviteLink: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CreateInviteLink(),
        settings: data,
      );
    },
    InvitationSent: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const InvitationSent(),
        settings: data,
      );
    },
    ShareMessageView: (data) {
      var args = data.getArgs<ShareMessageViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShareMessageView(
          userPost: args.userPost,
          key: args.key,
        ),
        settings: data,
      );
    },
    OrganizationSettingsView: (data) {
      var args = data.getArgs<OrganizationSettingsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OrganizationSettingsView(
          key: args.key,
          org: args.org,
        ),
        settings: data,
      );
    },
    OrganizationNameUrl: (data) {
      var args = data.getArgs<OrganizationNameUrlArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OrganizationNameUrl(
          key: args.key,
          org: args.org,
        ),
        settings: data,
      );
    },
    OrganizationLogo: (data) {
      var args = data.getArgs<OrganizationLogoArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OrganizationLogo(
          key: args.key,
          org: args.org,
        ),
        settings: data,
      );
    },
    AddPluginView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AddPluginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ChannelAddPeopleView arguments holder class
class ChannelAddPeopleViewArguments {
  final Key? key;
  final String channelId;
  final String channelName;
  ChannelAddPeopleViewArguments(
      {this.key, required this.channelId, required this.channelName});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// OTPView arguments holder class
class OTPViewArguments {
  final Key? key;
  OTPViewArguments({this.key});
}

/// SignUpView arguments holder class
class SignUpViewArguments {
  final Key? key;
  SignUpViewArguments({this.key});
}

/// ForgotPasswordEmailView arguments holder class
class ForgotPasswordEmailViewArguments {
  final Key? key;
  ForgotPasswordEmailViewArguments({this.key});
}

/// ForgotPasswordOtpView arguments holder class
class ForgotPasswordOtpViewArguments {
  final Key? key;
  ForgotPasswordOtpViewArguments({this.key});
}

/// ForgotPasswordNewView arguments holder class
class ForgotPasswordNewViewArguments {
  final Key? key;
  final String otp;
  ForgotPasswordNewViewArguments({this.key, required this.otp});
}

/// ChannelNotificationView arguments holder class
class ChannelNotificationViewArguments {
  final Key? key;
  final String? channelName;
  ChannelNotificationViewArguments({this.key, this.channelName});
}

/// NewChannel arguments holder class
class NewChannelArguments {
  final Key? key;
  NewChannelArguments({this.key});
}

/// HomePage arguments holder class
class HomePageArguments {
  final Key? key;
  final Widget? organizationLogo;
  HomePageArguments({this.key, this.organizationLogo});
}

/// DmSearch arguments holder class
class DmSearchArguments {
  final Key? key;
  DmSearchArguments({this.key});
}

/// JumpToView arguments holder class
class JumpToViewArguments {
  final Key? key;
  JumpToViewArguments({this.key});
}

/// DmUserView arguments holder class
class DmUserViewArguments {
  final Key? key;
  DmUserViewArguments({this.key});
}

/// DmScreen arguments holder class
class DmScreenArguments {
  final Key? key;
  DmScreenArguments({this.key});
}

/// UseDifferentEmailView arguments holder class
class UseDifferentEmailViewArguments {
  final Key? key;
  final OrganizationSwitchMethod method;
  UseDifferentEmailViewArguments({this.key, required this.method});
}

/// SetStatusView arguments holder class
class SetStatusViewArguments {
  final Key? key;
  SetStatusViewArguments({this.key});
}

/// EditProfileView arguments holder class
class EditProfileViewArguments {
  final Key? key;
  final UserModel user;
  EditProfileViewArguments({this.key, required this.user});
}

/// SelectEmail arguments holder class
class SelectEmailArguments {
  final Key? key;
  final OrganizationSwitchMethod method;
  SelectEmailArguments({this.key, required this.method});
}

/// CreateOrganization arguments holder class
class CreateOrganizationArguments {
  final Key? key;
  final String email;
  CreateOrganizationArguments({this.key, required this.email});
}

/// GeneralSearchView arguments holder class
class GeneralSearchViewArguments {
  final Key? key;
  GeneralSearchViewArguments({this.key});
}

/// ThreadDetailView arguments holder class
class ThreadDetailViewArguments {
  final UserPost? userPost;
  final Key? key;
  ThreadDetailViewArguments({required this.userPost, this.key});
}

/// EditChannelPageView arguments holder class
class EditChannelPageViewArguments {
  final Key? key;
  final String channelName;
  final String? channelId;
  EditChannelPageViewArguments(
      {this.key, required this.channelName, this.channelId});
}

/// StartDmView arguments holder class
class StartDmViewArguments {
  final Key? key;
  StartDmViewArguments({this.key});
}

/// OrganizationUrlView arguments holder class
class OrganizationUrlViewArguments {
  final Key? key;
  final String email;
  OrganizationUrlViewArguments({this.key, required this.email});
}

/// ChannelPageView arguments holder class
class ChannelPageViewArguments {
  final Key? key;
  final String? channelName;
  final String? channelId;
  final int? membersCount;
  final bool? public;
  ChannelPageViewArguments(
      {this.key,
      required this.channelName,
      required this.channelId,
      required this.membersCount,
      required this.public});
}

/// ChannelInfoView arguments holder class
class ChannelInfoViewArguments {
  final Key? key;
  final int numberOfMembers;
  final List<ChannelMembermodel> channelMembers;
  final ChannelModel channelDetail;
  final String channelName;
  ChannelInfoViewArguments(
      {this.key,
      required this.numberOfMembers,
      required this.channelMembers,
      required this.channelDetail,
      required this.channelName});
}

/// DirectMessage arguments holder class
class DirectMessageArguments {
  final Key? key;
  final String? username;
  DirectMessageArguments({this.key, this.username});
}

/// WebViewPage arguments holder class
class WebViewPageArguments {
  final String name;
  final String url;
  final Key? key;
  WebViewPageArguments({required this.name, required this.url, this.key});
}

/// InviteViaEmail arguments holder class
class InviteViaEmailArguments {
  final Key? key;
  InviteViaEmailArguments({this.key});
}

/// ShareMessageView arguments holder class
class ShareMessageViewArguments {
  final UserPost userPost;
  final Key? key;
  ShareMessageViewArguments({required this.userPost, this.key});
}

/// OrganizationSettingsView arguments holder class
class OrganizationSettingsViewArguments {
  final Key? key;
  final OrganizationModel org;
  OrganizationSettingsViewArguments({this.key, required this.org});
}

/// OrganizationNameUrl arguments holder class
class OrganizationNameUrlArguments {
  final Key? key;
  final OrganizationModel org;
  OrganizationNameUrlArguments({this.key, required this.org});
}

/// OrganizationLogo arguments holder class
class OrganizationLogoArguments {
  final Key? key;
  final OrganizationModel org;
  OrganizationLogoArguments({this.key, required this.org});
}
