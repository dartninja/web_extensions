part of downloads;

@JS("DownloadQuery")
@anonymous
class DownloadQuery {
  /// An array of strings. Include only DownloadItems whose filename or url contains all of the given strings. You can also include terms beginning with a dash (-) — these terms must not be contained in the item's filename or url for it to be included.
  external List<String> get query;
  external set query(List<String> value);

  ///  An integer representing the ID of the downloads.DownloadItem you want to query.
  external int get id;
  external set id(int value);

  external factory DownloadQuery({
    List<String> query,
    int id
  });

  //  startedBeforeOptional
//  A DownloadTime. Include only DownloadItems that started before the given time.
//  startedAfterOptional
//  A DownloadTime. Include only DownloadItems that started after the given time.
//  endedBeforeOptional
//  A DownloadTime. Include only DownloadItems that ended before the given time.
//  endedAfterOptional
//  A DownloadTime. Include only DownloadItems that ended after the given time.
//  totalBytesGreaterOptional
//  A number representing a number of bytes. Include only DownloadItems whose totalBytes is greater than the given number.
//  totalBytesLessOptional
//  A number representing a number of bytes. Include only DownloadItems whose totalBytes is less than the given number.
//  filenameRegexOptional
//  A string representing a regular expression. Include only DownloadItems whose filename value matches the given regular expression.
//  urlRegexOptional
//  A string representing a regular expression. Include only DownloadItems whose url value matches the given regular expression.
//  limitOptional
//  An integer representing a number of results. Include only the specified number of DownloadItems.
//  orderByOptional
//  An array of strings representing DownloadItem properties the search results should be sorted by. For example, including startTime then totalBytes in the array would sort the DownloadItems by their start time, then total bytes — in ascending order. To specify sorting by a property in descending order, prefix it with a hyphen, for example -startTime.
//  urlOptional
//  A string representing the absolute URL that the download was initiated from, before any redirects.
//  filenameOptional
//  A string representing the absolute local path of the download file you want to query.
//  dangerOptional
//  A string representing a downloads.DangerType — include only DownloadItems with this danger value.
//  mimeOptional
//  A string representing a MIME type. Include only DownloadItems with this mime value.
//  startTimeOptional
//  A string representing an ISO 8601 format time. Include only DownloadItems with this startTime value.
//  endTimeOptional
//  A string representing an ISO 8601 format time. Include only will limited to DownloadItems with this endTime value.
//  stateOptional
//  A string representing a download downloads.State (in_progress, interrupted, or complete). Include onlyDownloadItems with this state value.
//  pausedOptional
//  A boolean that indicates whether a download is paused — i.e. has stopped reading data from the host, but kept the connection open (true), or not (false). Include only DownloadItems with this paused value.
//  errorOptional
//  A string representing an downloads.InterruptReason — a reason why a download was interrupted. Include only DownloadItems with this error value.
//  bytesReceivedOptional
//  A number representing the number of bytes received so far from the host, without considering file compression. Include only DownloadItems with this bytesReceived value.
//  totalBytesOptional
//  A number representing the total number of bytes in the downloaded file, without considering file compression. Include only DownloadItems with this totalBytes value.
//  fileSizeOptional
//  number. Number of bytes in the whole file post-decompression, or -1 if unknown. A number representing the total number of bytes in the file after decompression. Include only DownloadItems with this fileSize value.
//  existsOptional
//  A boolean indicating whether a downloaded file still exists (true) or not (false). Include only DownloadItems with this exists value.
}