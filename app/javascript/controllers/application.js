import { Application } from "@hotwired/stimulus"
import LocalTimeController from "./local_time_controller";

const application = Application.start()
application.register("local-time", LocalTimeController);

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

