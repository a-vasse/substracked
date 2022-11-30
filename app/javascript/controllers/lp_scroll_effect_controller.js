import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lp-scroll-effect"
export default class extends Controller {
  connect() {
    console.log('LP Controller connected')
  }

  static targets = [ "navbar" ]

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      console.log('is inside the view')
      this.navbarTarget.classList.add("opacity-0")
      this.navbarTarget.style.translate = '0 -100%'


    } else {
      console.log('is outside the view')
      this.navbarTarget.classList.remove("opacity-0")
      this.navbarTarget.style.translate = '0 0'
    }
  }
}
