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
      this.currentTime += 10;

       if (this.currentTime < this.endValue) {
        console.log(this.currentTime);
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
