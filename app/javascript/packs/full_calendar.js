
import { fullcalendar } from "./fullcalendar"

function initialization(){

var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function() {
    var calendar = $(this);
    calendar.fullCalendar({});
  })
};


$(document).on('turbolinks:load', initialize_calendar);
};

export { initialization };

