import 'package:sail_app/constant/app_urls.dart';
import 'package:sail_app/entity/plan_entity.dart';
import 'package:sail_app/utils/http_util.dart';

class PlanService {
  Future<List<PlanEntity>> plan() {
    return HttpUtil.instance.get(AppUrls.plan).then((result) {
      return planEntityFromList(result['data']);
    });
  }

  Future<PlanEntity> planDetail(int id) {
    return HttpUtil.instance.get(AppUrls.plan, parameters: {'id': id}).then((result) {
      return PlanEntity.fromMap(result['data']);
    });
  }
}
