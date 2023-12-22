import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startDate"]

  connect() {
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      onChange: (selectedDates) => {
        if (selectedDates.length === 2) {
          const startDate = new Date(selectedDates[0]);
          startDate.setDate(startDate.getDate() + 1);
          this.startDateTarget.value = startDate.toISOString().split('T')[0];
          const endDate = new Date(selectedDates[1]);
          endDate.setDate(endDate.getDate() + 1);
          document.getElementById('booking_ends_at').value = endDate.toISOString().split('T')[0];
        }
      }
    });
  }
}
