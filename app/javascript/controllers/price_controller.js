import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["start_date", "end_date", "price"]

  updatePrice() {
    // this.priceTarget.textContent =
    //   `Hello, ${this.startDateTarget.value}!`
    console.log("yes bitch")
    // `${(this.startDateTarget.value - this.endDateTarget.value)}`
  }
}

// (end_date.to_date - start_date.to_date).to_i

// Need to be done + ask for help to a TA
/* For the moment the data-action and data-target have been put
on the html file hens/show */
