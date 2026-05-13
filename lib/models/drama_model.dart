enum DramaType { free, vip }

class DramaModel {
  final String id;
  final String title;
  final String coverUrl;
  final DramaType type;
  final String category;
  final int totalEpisodes;
  final int currentEpisode;
  final int tryWatchEpisodes;

  const DramaModel({
    required this.id,
    required this.title,
    required this.coverUrl,
    required this.type,
    required this.category,
    required this.totalEpisodes,
    required this.currentEpisode,
    this.tryWatchEpisodes = 0,
  });

  String get tagText {
    if (type == DramaType.free) return '免费';
    if (tryWatchEpisodes > 0 && currentEpisode < totalEpisodes) return '会员';
    return '更新至$currentEpisode集';
  }

  bool get isFree => type == DramaType.free;
  bool get isVip => type == DramaType.vip;
  bool get isComplete => currentEpisode >= totalEpisodes;
}
