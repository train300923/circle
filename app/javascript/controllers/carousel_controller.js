import { Controller } from "@hotwired/stimulus"
// import Carousel from '../vendor/javascript/stimulus-carousel'
import 'swiper/css/bundle'
// Connects to data-controller="carousel"
export default class extends Controller {
  connect() {
    console.log("Controller connected");
    // Initialize Swiper instance
    this.swiper = new Swiper(this.element, {
      // Specify Swiper options here
      // Example:
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  }

  disconnect() {
    // Destroy Swiper instance when the controller disconnects
    if (this.swiper) {
      this.swiper.destroy();
      this.swiper = null;
    }
  }
}
// Below is the initial attempt to code the carousel:
// export default class extends Controller {
//   static targets = ["image"]
//   connect() {
//     this.index = 0
//   }
//   previous() {
//     if (this.index > 0) {
//       this.imageTargets[this.index].classList.add("hidden")
//       this.index -= 1
//       this.imageTargets[this.index].classList.remove("hidden")
//     }
//   }
//   next() {
//     if (this.index < this.imageTargets.length - 1) {
//       this.imageTargets[this.index].classList.add("hidden")
//       this.index += 1
//       this.imageTargets[this.index].classList.remove("hidden")
//     }
//   }
// }
