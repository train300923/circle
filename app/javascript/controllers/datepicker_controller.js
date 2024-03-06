import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element
    //   ,
    //   {
    //   enableTime: this.data.get("datepicker_enable_time") === "true",
    //   noCalendar: this.data.get("datepicker_no_calendar") === "true",
    //   dateFormat: this.data.get("datepicker_date_format"),
    //   time_24hr: this.data.get("datepicker_time_24hr") === "true"
    // }
    );
  }
}
