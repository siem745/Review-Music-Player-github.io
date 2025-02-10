void properties(){
 println("File Name", playListMetaData[currentSong].fileName() ); //Data Correct, Verified in Console
  //Must use pure Java at OS Level to list fileName before loading Playlist
  println("Song Length (in milliseconds)", playListMetaData[currentSong].length() );
  println("Song Length (in seconds)", playListMetaData[currentSong].length()/1000 ); 
  println("Song Length (in minutes & seconds)", playListMetaData[currentSong].length()/1000/60, "minutes", ( playListMetaData[currentSong].length()/1000 - ( playListMetaData[currentSong].length()/1000/60)*60 ), "seconds" ); //Gets Formula
  println("Song Title", playListMetaData[currentSong].title() );
  println("Author", playListMetaData[currentSong].author() );
  println("Composer", playListMetaData[currentSong].composer() );
  println("Orchestra", playListMetaData[currentSong].orchestra() );
  println("Album", playListMetaData[currentSong].album() );
  println("Disk", playListMetaData[currentSong].disc() );
  println("Publisher", playListMetaData[currentSong].publisher() );
  println("Date Released", playListMetaData[currentSong].date() );
  println("Copyright", playListMetaData[currentSong].copyright() );
  println("Comments", playListMetaData[currentSong].comment() );
  println("Lyrics", playListMetaData[currentSong].lyrics() ); //OPTIONAL: Music App Sing Along
  println("Track", playListMetaData[currentSong].track() );
  println("Genre", playListMetaData[currentSong].genre() );
  println("Encoded", playListMetaData[currentSong].encoded() );
}
