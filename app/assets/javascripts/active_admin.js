//= require active_admin/base
//= require just_datetime_picker/nested_form_workaround
//= require fullcalendar

$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
      'allDaySlot' : false,
      'defaultEventMinutes': '30',
      'minTime': '9',
      'maxTime': '22'
    })
    $("#calendar").fullCalendar( 'changeView', 'agendaDay' );
});