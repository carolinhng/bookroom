import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total"
export default class extends Controller {
  static targets = ["bookingStartDate", "bookingEndDate", "day", "price"]
  static values = {
    price: Number,
  }
  connect() {
    console.log(this.bookingStartDateTarget.value);
    console.log(this.bookingEndDateTarget.value);
    console.log("hello")
  }

  calculate() {
    // console.log(this.bookingEndDateTarget.value);
    const startDay = new Date(this.bookingStartDateTarget.value).parse;
    const endDay = new Date(this.bookingEndDateTarget.value).parse;

    const [year, month, day] = this.bookingStartDateTarget.value.split(".");
    const dateOfBeginning = new Date(day, month - 1, year);
    console.log(dateOfBeginning);

    const [year2, month2, day2] = this.bookingEndDateTarget.value.split(".");
    const dateDeFin = new Date(day2, month2 - 1, year2);
    console.log(dateOfBeginning);

    const differenceEnMilliseconds = dateDeFin - dateOfBeginning;

    const numberOfDays = Math.floor(differenceEnMilliseconds / (1000 * 60 * 60 * 24));

    this.dayTarget.innerText = numberOfDays;

    const total = this.priceValue * parseInt(numberOfDays);
    this.priceTarget.innerText = total


  }

}
