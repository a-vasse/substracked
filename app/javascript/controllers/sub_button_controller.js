import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sub-button"
export default class extends Controller {
  static targets = ["button", "url"]

  connect() {
    console.log("Sub Button Active")
  }

  subActions() {
    window.open(this.urlTarget.value, '_blank');
    this.buttonTarget.click()
  }
}
