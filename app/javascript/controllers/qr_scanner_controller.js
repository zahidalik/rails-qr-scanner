import { Controller } from "@hotwired/stimulus"
import { BrowserQRCodeReader } from '@zxing/library';

// Connects to data-controller="qr-scanner"
export default class extends Controller {
  connect() {
    const codeReader = new BrowserQRCodeReader();

    codeReader
    .decodeOnceFromVideoDevice(undefined, 'video')
    .then((result) => {
      // process the result
      console.log(result.text)

      let valueForInput = document.getElementById('qr-result')  //.textContent = result.text
      valueForInput.value = result.text
    })
    .catch(err => console.error(err));
  }

  reloadPage() {
    document.location.reload()
  }
}
