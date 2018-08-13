part of downloads;

@JS("DownloadItem")
@anonymous
class DownloadItem {
  ///  A string representing the file's absolute local path.
  external String get filename;
  external set filename(String value);

//  byExtensionIdOptional
//  A string representing the ID of the extension that triggered the download (if it was triggered by an extension). This does not change once set. If the download was not triggered by an extension this is undefined.
//  byExtensionNameOptional
//  A string representing the name of the extension that triggered the download (if it was triggered by an extension). This may change if the extension changes its name or the user changes their locale. If the download was not triggered by an extension this is undefined.
//  bytesReceived
//  A number representing the number of bytes received so far from the host during the download; this does not take file compression into consideration.
//  canResume
//  A boolean indicating whether a currently-interrupted (e.g. paused) download can be resumed from the point where it was interrupted (true), or not (false).
//  danger
//  A string indicating whether this download is thought to be safe or known to be suspicious. Its possible values are defined in the downloads.DangerType type.
//  endTimeOptional
//  A string (in ISO 8601 format) representing the number of milliseconds between the UNIX epoch and when this download ended. This is undefined if the download has not yet finished.
//  errorOptional
//  A string indicating why a download was interrupted. Possible values are defined in the downloads.InterruptReason type. This is undefined if an error has not occurred.
//  estimatedEndTimeOptional
//  A string (in ISO 8601 format) representing the estimated number of milliseconds between the UNIX epoch and when this download is estimated to be completed. This is undefined if it is not known (in particular, it is undefined in the DownloadItem that's passed into downloads.onCreated).
//  exists
//  A boolean indicating whether a downloaded file still exists (true) or not (false). This information might be out-of-date, as browsers do not automatically watch for file removal — to check whether a file exists, call the downloads.search() method, filtering for the file in question.
//  fileSize
//  A number indicating the total number of bytes in the whole file, after decompression. A value of -1 here means that the total file size is unknown.
//  id
//  An integer representing a unique identifier for the downloaded file that is persistent across browser sessions.
//  incognito
//  A boolean that indicates whether the download is recorded in the browser's history (false), or not (true).
//  mime
//  A string representing the downloaded file's MIME type.
//  paused
//  A boolean indicating whether the download is paused, i.e. if the download has stopped reading data from the host but has kept the connection open. If so, the value is true, false if not.
//  referrer
//  A string representing the downloaded file's referrer.
//  startTime
//  A string (in ISO 8601 format) representing the number of milliseconds between the UNIX epoch and when this download began.
//  state
//  A string Indicating whether the download is progressing, interrupted, or complete. Possible values are defined in the downloads.State type.
//  totalBytes
//  A number indicating the total number of bytes in the file being downloaded. This does not take file compression into consideration. A value of -1 here means that the total number of bytes is unknown.
//  url
//  A string representing the absolute URL from which the file was downloaded.
}