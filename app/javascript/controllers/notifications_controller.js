import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notifications"
export default class extends Controller {
  static values = {
    id: Number
  };

  connect() {
    console.log("Notifications connected")
    this.element.addEventListener('hide.bs.toast', () => {
      const url = `/api/v1/notifications/${this.idValue}`
      const data = {
        notification: {
          read: true
        }
      }

      fetch(url, {
        method: 'PATCH',
        headers:  {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      }).then(response => console.log(response));
    })
  }
}
