import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="circle-names"
export default class extends Controller {
  static targets = ["image"]

  fire(event) {
    const clickedImage = event.currentTarget;
    clickedImage.style.borderRadius = "50%";
    clickedImage.style.border = "2px solid green";
    };
}
