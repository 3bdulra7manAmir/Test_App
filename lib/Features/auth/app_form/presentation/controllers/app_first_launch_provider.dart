import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/services/database/shared_preference/app_database.dart';

part 'app_first_launch_provider.g.dart';


@riverpod
Future<bool> firstLaunch(FirstLaunchRef ref) async
{
  return await UserPreferences.instance.isFirstLaunch();
}
