import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/domain/repositories/RecommendationRepository.dart';

class RecommendationRespsitoryImpl implements RecommendationRepository {
  @override
  List<RecommendationItem> getRecommendations() {
    return [
      RecommendationItem(
        id: 1,
        title: "test1",
        brand: "brand1",
        amount: 1.99,
        valueInfo: "info1",
      ),
      RecommendationItem(
        id: 2,
        title: "test2",
        brand: "brand2",
        amount: 2.99,
        valueInfo: "info2",
      ),
      RecommendationItem(
        id: 3,
        title: "test3",
        brand: "brand3",
        amount: 3.99,
        valueInfo: "info3",
      ),
      RecommendationItem(
        id: 4,
        title: "test4",
        brand: "brand4",
        amount: 4.99,
        valueInfo: "info4",
      ),
    ];
  }
}
