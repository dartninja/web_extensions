@JS("browser.downloads")
library downloads;

import 'package:js/js.dart';
import 'dart:async';
import 'shared.dart';

part 'downloads/download_query.dart';
part 'downloads/download_item.dart';



class Downloads {
  Future<List<DownloadItem>> search(DownloadQuery query) =>
      awaitPromise(_search(query));
}

@JS("search")
external Promise _search(DownloadQuery query);

