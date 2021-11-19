import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["start-date", "end-date", "price"]

  updatePrice() {
    document.querySelector('#total-price').innerHTML = "";
    const startInput = document.getElementById("booking_start_date").value;
    const endInput = document.getElementById("booking_end_date").value;
    const pricePerDay = document.getElementById("price-per-day").innerHTML;

    let days = (Date.parse(endInput) - Date.parse(startInput)) / (1000 * 60 * 60 * 24);
    this.priceTarget.textContent = `${pricePerDay * days}$`;
  }
}
