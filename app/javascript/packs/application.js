import "bootstrap";

import "fullcalendar";
import "fullcalendar-scheduler";

import "moment";

import "jquery"
import "jquery-ui"




$(function(){
$('#calendar').fullCalendar({
  schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
  droppable: true,
  drop: function(date) {
    alert("Dropped on " + date.format());
  }
});

  $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },



});


});

$(function(){
  $('#my-draggable').draggable({
  revert: true,
  revertDuration: 0
  });
});
