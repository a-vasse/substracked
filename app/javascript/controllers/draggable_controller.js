import { Controller } from "@hotwired/stimulus"
import { Sortable } from "@shopify/draggable"

export default class extends Controller {
  connect() {
    console.log("Hello Draggable!");

    const containerSelector = '.draggable-container';
    const containers = document.querySelectorAll(containerSelector);

    const sortable = new Sortable(containers, {
      draggable: '.card',
      mirror: {
        appendTo: containerSelector,
        constrainDimensions: true,
      },
    });

    return sortable;
  }
}
