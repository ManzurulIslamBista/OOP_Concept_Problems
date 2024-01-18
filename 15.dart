import 'dart:math';

class MusicLibrary {
  List<String>? songs;

  MusicLibrary() {
    this.songs = [];
  }

  void addSong(String songTitle) {
    if (!songs!.contains(songTitle)) {
      songs!.add(songTitle);
      print("Song added: $songTitle");
    } else {
      print("$songTitle is already in library.");
    }
  }

  void removeSong(String songTitle) {
    if (songs!.contains(songTitle)) {
      songs!.remove(songTitle);
      print("Song removed: $songTitle");
    } else {
      print("$songTitle is not in the music library.");
    }
  }

  void playRandomSong() {
    if (songs!.isEmpty) {
      print("No songs available in the music library.");
    } else {
      Random random = Random();
      int randomIndex = random.nextInt(songs!.length);
      print("Playing random song: ${songs![randomIndex]}");
    }
  }

  void displayLibraryDetails() {
    print("\nMusic Library details:");
    print("Songs: ${songs}");
  }
}

void main() {
  MusicLibrary myMusicLibrary = MusicLibrary();
  myMusicLibrary.addSong("Song A");
  myMusicLibrary.addSong("Song B");
  myMusicLibrary.addSong("Song C");
  myMusicLibrary.displayLibraryDetails();

  myMusicLibrary.removeSong("Song B");

  myMusicLibrary.displayLibraryDetails();

  myMusicLibrary.playRandomSong();
}
