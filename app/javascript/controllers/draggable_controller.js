import { Controller } from "@hotwired/stimulus"
import { Sortable } from "@shopify/draggable";

export default class extends Controller {
  connect() {
    console.log("Hello Draggable!");

    const containerSelector = '.draggable-container';
    const containers = document.querySelectorAll(containerSelector);

    if (containers.length === 0) {
      return false;
    }

    const sortable = new Sortable(containers, {
      draggable: '.card',
      mirror: {
        appendTo: containerSelector,
        constrainDimensions: true,
      },
      classes: {
        'source:dragging': ['card-draggable-on'],
      },
      delay: 100
    });

    return sortable;
  }
}
