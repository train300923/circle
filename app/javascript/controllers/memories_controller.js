import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="memories"
export default class extends Controller {
  connect() {
    console.log("memories connected")
  }
}
