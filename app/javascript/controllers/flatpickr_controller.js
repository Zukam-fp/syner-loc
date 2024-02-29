import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickrRangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime", "totalPrice", "totalNights"]
  connect() {
    flatpickr(this.startTimeTarget, {
              enableTime: true,
              // Provide an id for the plugin to work
              plugins: [new rangePlugin({ input: "#end_time"})]})
    flatpickr(this.endTimeTarget, {})
  }


 dynamicPrice() {
  console.log(this.endTimeTarget.value)
  console.log(this.startTimeTarget.value)
  let dateDiffInMilliseconds = new Date(this.endTimeTarget.value) - new Date(this.startTimeTarget.value);
  let nbrOfNights = dateDiffInMilliseconds / 86400000;
  let totalPrice = this.totalPriceTarget.dataset.unitPrice * nbrOfNights
  if(this.startTimeTarget.value && this.endTimeTarget.value) {
    this.totalNightsTarget.innerText = nbrOfNights
    this.totalPriceTarget.innerText = totalPrice
  }
  }
// [startDate, endDate].forEach(date => {
//   date.addEventListener("change", (event) => {
//     dynamicPrice();
//   });
// })
}
