import 'package:gaming_database_app/model/game_models/cover.dart';
import 'package:gaming_database_app/model/game_models/mode.dart';

import 'game_models/genre.dart';
import 'game_models/keyword.dart';
import 'game_models/platform.dart';
import 'game_models/player_perspective.dart';
import 'game_models/screenshot.dart';
import 'game_models/video.dart';

class GameModel {
  final int id;
  final CoverModel? cover;
  final int createdAt;
  final int firstRelease;
  final List<ModeModel>? modes;
  final List<GenreModel>? genres;
  final List<KeywordModel>? keywords;
  final List<PlatformModel>? platforms;
  final List<PlayerPerspectiveModel>? perspectives;
  final double popularity;
  final List<ScreenshotModel>? screenshots;
  final String summary;
  final List<VideoModel>? videos;
  final double rating;
  final String name;

  GameModel(
      this.id,
      this.cover,
      this.createdAt,
      this.firstRelease,
      this.modes,
      this.genres,
      this.keywords,
      this.platforms,
      this.perspectives,
      this.popularity,
      this.screenshots,
      this.summary,
      this.videos,
      this.rating,
      this.name);

  GameModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        cover =
            json["cover"] == null ? null : CoverModel.fromJson(json["cover"]),
        createdAt = json["created_at"],
        firstRelease = json["first_release_date"],
        modes = json["game_modes"] == null
            ? null
            : (json["game_modes"] as List)
                .map((i) => ModeModel.fromJson(i))
                .toList(),
        genres = json["genres"] == null
            ? null
            : (json["genres"] as List)
                .map((i) => GenreModel.fromJson(i))
                .toList(),
        keywords = json["keywords"] == null
            ? null
            : (json["keywords"] as List)
                .map((i) => KeywordModel.fromJson(i))
                .toList(),
        platforms = json["platforms"] == null
            ? null
            : (json["platforms"] as List)
                .map((i) => PlatformModel.fromJson(i))
                .toList(),
        perspectives = json["player_perspectives"] == null
            ? null
            : (json["player_perspectives"] as List)
                .map((i) => PlayerPerspectiveModel.fromJson(i))
                .toList(),
        popularity = json["popularity"],
        screenshots = json["screenshots"] == null
            ? null
            : (json["screenshots"] as List)
                .map((i) => ScreenshotModel.fromJson(i))
                .toList(),
        summary = json["summary"],
        videos = json["videos"] == null
            ? null
            : (json["videos"] as List)
                .map((i) => VideoModel.fromJson(i))
                .toList(),
        rating = json["total_rating"],
        name = json["name"];
}
