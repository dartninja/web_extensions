@JS()
library shared;

import 'dart:async';
import 'dart:js';
import 'package:js/js.dart';
import 'package:logging/logging.dart';

final Logger _log = new Logger("shared.dart");

JsObject browser = context["browser"];

JsObject createObject(dynamic input) {
  Map<String, dynamic> values = <String, dynamic>{};

  return JsObject.jsify(values);
}

class BrowserObject {
  final JsObject jsProxy;

  BrowserObject() : jsProxy = new JsObject(context['Object']);

  JsObject toJs() => jsProxy;

  String toString() => jsProxy.toString();
}

@JS("Promise")
class Promise {
  external void then(Function onFulfilled, Function onRejected);
  external static Promise resolve(dynamic value);
}

dynamic _sanitize(JsObject input) {
  if(input is JsArray) {
    _log.finest("Converting JsArray to List");
    List output = [];
    for(int i = 0; i<input.length; i++) {
      output.add(_sanitize(input[i]));
    }
    return output;
  } else  if(input is JsObject){
    _log.finest("input is JsObject");
  } else {
    new JsObject.fromBrowserObject(input);
  }
  return input;
}

Future<dynamic> awaitPromise(Promise p) {
  _log.finest("awaitPromise start($p)");
  try {
    Completer<dynamic> c = new Completer<dynamic>();
    p.then(allowInterop((value) {
      _log.finest("Promise completed with $value");
      c.complete(_sanitize(value));
    }), allowInterop((value) {
      c.completeError(value);
    }));
    return c.future;
  } finally {
    _log.finest("awaitPromise end");
  }
}
