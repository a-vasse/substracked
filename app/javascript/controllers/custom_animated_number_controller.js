import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    start: Number,
    end: Number,
    duration: Number
  };

  connect() {
    console.log(this.numberStartValue);
    this.currentTime = 0
    this.animate();
  }

  animate() {
    setTimeout(() => {
      if (this.endValue > 5000) {
        this.currentTime += 75;
      } else {
        this.currentTime += 25;
      }

       if (this.currentTime < this.endValue) {
        this.element.innerHTML = this.commatize(this.currentTime);
        this.animate();
      } else {
        this.element.innerHTML = this.commatize(this.endValue);
      }
    }, 0);
  }

  commatize(number) {
    return number.toLocaleString();
  }
}
