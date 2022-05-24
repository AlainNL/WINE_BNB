import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    var typed = new Typed(this.element, {
      strings: ["Home", "House", "Wine BnB !!!"],
      typeSpeed: 100,
      backSpeed: 50,
      loop: true,
      showCursor: false
    });
  }
}
