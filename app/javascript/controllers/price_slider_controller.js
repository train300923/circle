import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["output"]

  update(event) {
    console.log(this.outputTarget)
    this.outputTarget.innerText = `${event.target.value} USD`;
  }
}
