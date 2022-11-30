import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lp-scroll-effect"
export default class extends Controller {
  static targets = [ "navbar", "background", "introContentContainer", "introContent", "loginFormContainer" ]

  connect() {
    console.log('LP Controller connected')
    this.backgroundTarget.classList.add("opacity-50")
  }

  updateNavbar() {
    // if (window.scrollY >= window.innerHeight) {
    if (window.scrollY >= (this.introContentContainerTarget.offsetHeight - (this.introContentContainerTarget.offsetHeight / 4))) {
      this.navbarTarget.classList.add("opacity-0")
      this.navbarTarget.style.translate = '0 -100%'
    } else {
      this.navbarTarget.classList.remove("opacity-0")
      this.navbarTarget.style.translate = '0 0'
    }
  }

  updateBackground() {
    if (window.scrollY >= (this.introContentContainerTarget.offsetHeight - (this.introContentContainerTarget.offsetHeight / 4))) {
      // console.log('container should be 50% width')
      this.backgroundTarget.classList.add("w-50")
      this.backgroundTarget.classList.remove("opacity-50")
      this.loginFormContainerTarget.classList.remove("opacity-0")
    } else {
      // console.log('container should be 100% width')
      this.backgroundTarget.classList.remove("w-50")
      this.backgroundTarget.classList.add("opacity-50")
      this.loginFormContainerTarget.classList.add("opacity-0")
    }
  }

  updateContent() {
    console.log(this.introContentTargets)
    this.introContentTargets.forEach((element, index) => {
      // Change the last digit to make it disapear later/earlier
      if (window.scrollY >= (element.offsetTop - (window.innerHeight * index) - 50) && window.scrollY >= ((window.innerHeight * index) + element.offsetHeight)) {
        // console.log(element.id, window.scrollY, element.offsetTop, 'not visible')
        element.classList.add("opacity-0")
      } else {
        // console.log(element.id, window.scrollY, element.offsetTop, 'visible')
        element.classList.remove("opacity-0")
      }
    });
  }
}
