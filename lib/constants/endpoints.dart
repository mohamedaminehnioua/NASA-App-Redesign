const String base = 'https://api.nasa.gov';
const String apikey = 'API-KEY';

///
const String getImagesURL = '$base/planetary/apod?api_key=$apikey';

///Youtube API
const String nasaChannelId = 'UCtVd0c0tGXuTSbU5d8cSBUg';
const String youtubeApiKey = 'API-KEY'; //need to be changed (Its not mine)

const String nasaYoutubeVideosUrl =
    'https://www.googleapis.com/youtube/v3/search?'
    'key=$youtubeApiKey'
    '&channelId=$nasaChannelId'
    '&part=snippet'
    '&type=video'
    '&order=date';
