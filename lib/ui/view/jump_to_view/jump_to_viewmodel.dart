import 'package:zurichat/app/app.router.dart';
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';
import '../../../services/app_services/app_toast.dart';
import '../../../models/channels_search_model.dart';
import '../../../models/user_search_model.dart';
import '../../../services/in_review/jump_to_api.dart';
import '../../../services/app_services/connectivity_service.dart';
import '../../../services/app_services/local_storage_services.dart';

class JumpToViewModel extends FormViewModel {
  final navigation = locator<NavigationService>();
  final log = getLogger('DmJumpToViewModel');
  static final storageService = locator<SharedPreferenceLocalStorage>();
  final connectivityService = locator<ConnectivityService>();
  final api = locator<JumpToApi>();
  List<NewUser> userSearch = [];
  List<ChannelsSearch> joinedChannelsSearch = [];
  List<ChannelsSearch> allChannelsSearch = [];

  @override
  void setFormStatus() {}

  navigateBack() {
    navigation.back();
  }

  void _onChanged() => (value) {
        allChannelsSearch = allChannelsSearch
            .where((channels) => (channels.name.toString().contains(
                  value.toLowerCase(),
                )))
            .toList();
        notifyListeners();
      };

  //getters for the view
  get onChanged => _onChanged();

  Stream<bool> checkConnectivity() async* {
    yield await connectivityService.checkConnection();
  }

  Future<List<ChannelsSearch>?>? fetchChannels() async {
    try {
      setBusy(true);
      allChannelsSearch = await api.allChannelsList();
      setBusy(false);
      notifyListeners();
      return allChannelsSearch;
    } catch (e) {
      log.e("Model channels error - $e");
    }
  }

  Future<List<NewUser>?>? fetchUsers() async {
    try {
      setBusy(true);
      userSearch = (await api.fetchList());
      setBusy(false);
      notifyListeners();
      return userSearch;
    } catch (e) {
      log.e("Model users Error - ${e.toString()}");
      AppToast.instance.error(null, errorOccurred);
    }
  }

  void navigateToChannel(
      {String? name, String? id, int? membersCount, bool? isPublic}) {
    navigation.navigateTo(Routes.channelPageView,
        arguments: ChannelPageViewArguments(
            channelName: name,
            channelId: id,
            membersCount: membersCount,
            public: isPublic));
  }

  void navigateToUserDm(String friendID) {
    navigation.navigateTo(Routes.dmUserView, arguments: friendID);
  }
}
