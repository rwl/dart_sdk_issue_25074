if (this.document === undefined) {
  this.onmessage = function(event) {
    this.postMessage(event["data"]);
  }
}