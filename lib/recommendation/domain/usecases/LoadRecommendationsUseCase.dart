import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/domain/repositories/RecommendationRepository.dart';

class LoadRecommendationsUseCase {
  final RecommendationRepository repository;

  LoadRecommendationsUseCase({required this.repository});

  List<RecommendationItem> call() {
    return repository.getRecommendations();
  }
}
