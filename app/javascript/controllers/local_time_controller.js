import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["time"]; // Define "time" as a target

  connect() {
    this.timeTargets.forEach((element) => {
      const utcTime = element.dataset.createdAt;
      if (utcTime) {
        // Convert UTC time to local time
        const localTime = new Date(utcTime).toLocaleTimeString([], {
          hour: "2-digit",
          minute: "2-digit",
        });

        // Update the element's text content
        element.textContent = localTime;
      }
    });
  }
}