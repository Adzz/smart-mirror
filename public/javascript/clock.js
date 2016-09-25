window.onload = function (){
  startTime();
  showDayName();
  showMonthName();
};

function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('clock').innerHTML =
    h + ":" + m;
  setTimeout(startTime, 1000);
}

function checkTime(i) {
  if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}

(function() {
    var days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];

    var months = ['January','February','March','April','May','June','July','August','September','October','November','December'];

    Date.prototype.getMonthName = function() {
        return months[ this.getMonth() ];
    };
    Date.prototype.getDayName = function() {
        return days[ this.getDay() ];
    };
})();

function timeToMidnight(){
  var today = new Date();
  var tommorow = new Date(today.getFullYear(),today.getMonth(),today.getDate()+1);
  var timeToMidnight = (tommorow-today)
}

function showDayName () {
  var date = new Date();
  var day = date.getDayName();
  document.getElementById('day').innerHTML = day;
  setTimeout(showDayName, timeToMidnight());
}

function showMonthName() {
  var date = new Date();
  var month = date.getMonthName();
  document.getElementById('month').innerHTML = month;
  setTimeout(showMonthName, timeToMidnight());
}

