import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';

abstract class RecommendationRepository {
  List<RecommendationItem> getRecommendations();
}
