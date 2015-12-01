import 'dart:js';
import 'dart:html';

main() {
  var worker = new Worker('echo.js');
  worker.onMessage.listen((event) {
    print(event.data);
    document.body.appendText('${event.data}');
  });
  worker.postMessage('foo');
  worker.postMessage(new JsObject.jsify(['foo', 'bar']));
  worker.postMessage(['foo', 'baz']);
}
