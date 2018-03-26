var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function() {
    var calendar = $(this);
    calendar.fullCalendar({});
  })
};

// jQuery(document).ready(function($) {
// $(document).foundation();
// });
// $(document).on('turbolinks:load', initialize_calendar);

