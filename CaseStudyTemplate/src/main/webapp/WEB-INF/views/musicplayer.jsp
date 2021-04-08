<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
html,
body,
.view {
  height: 100%; }

#mobile-box {
  width: 360px; }

.gradient-card {
  /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(220, 66, 37, 0.5)), color-stop(100%, rgba(0, 47, 75, 0.5)));
  /* Chrome,Safari4+ */
  background: -webkit-linear-gradient(top, rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);
  /* Chrome10+,Safari5.1+ */
  background: -o-linear-gradient(top, rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);
  /* Opera 11.10+ */
  /* IE10+ */
  background: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 47, 75, 0.5)), to(rgba(220, 66, 37, 0.5)));
  background: linear-gradient(to bottom, rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);
  /* W3C */
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#002f4b', endColorstr='#00000000', GradientType=0);
  /* IE6-9 */ }

.card {
  -webkit-border-radius: 10px;
  border-radius: 10px; }

.card .view {
  -webkit-border-top-left-radius: 10px;
  border-top-left-radius: 10px;
  -webkit-border-top-right-radius: 10px;
  border-top-right-radius: 10px; }

.card h5 a {
  color: #0d47a1;
}
.card h5 a:hover {
  color: #072f6b;
}

#pButton {
  float: left; }

#timeline {
  width: 90%;
  height: 2px;
  margin-top: 20px;
  margin-left: 10px;
  float: left;
  -webkit-border-radius: 15px;
  border-radius: 15px;
  background: rgba(0, 0, 0, 0.3); }

#pButton {
  margin-top: 12px;
  cursor: pointer; }

#playhead {
  width: 8px;
  height: 8px;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  margin-top: -3px;
  background: black;
  cursor: pointer; }
</style>
<meta charset="ISO-8859-1">
<title>Artist name</title>
</head>
<body>
<!-- Full Page Intro -->
<div class="view">
  <!-- Mask & flexbox options-->
  <div class="mask gradient-card align-items-center">
    <!-- Content -->
    <div class="container d-flex justify-content-center my-4 mb-5">

      <div id="mobile-box">

        <h4 class="my-5 h5 text-center" style="color:rgb(235, 232, 234)">Just click<i class="fas fa-play ml-2"></i></h4>

        <!-- Card -->
        <div class="card">

          <!-- Card image -->
          <div class="view">
            <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg"
                 alt="Card image cap">
            <a href="https://bachataurban.com/" target="_blank">
              <div class="mask gradient-card"></div>
            </a>
          </div>

          <!-- Card content -->
          <div class="card-body text-center">

            <h5 class="h5 font-weight-bold"><a href="https://bachataurban.com/" target="_blank">Dj Flam</a></h5>
            <p class="mb-0">Urban Bachata remix</p>

            <audio id="music" preload="true">
              <source src="https://bachataurban.com/download/2/Stefflon%20Don%20-%2016%20Shots%20(%20DJ%20Flam%20-%20Urban%20Bachata%20remix%20).mp3">
            </audio>
            <div id="audioplayer">
              <i id="pButton" class="fas fa-play"></i>
              <div id="timeline">
                <div id="playhead"></div>
              </div>
            </div>

          </div>

        </div>
        <!-- Card -->


      </div>
    </div>
    <!-- Content -->

    <div class="container">
      <div class="card">
        <div class="card-body text-center">

          <p>Built with <a target="_blank" href="https://mdbootstrap.com/docs/standard/">Material Design for Bootstrap</a> - free and powerful Bootstrap UI KIT</p>

          <a class="btn btn-primary me-2" href="https://mdbootstrap.com/docs/standard/getting-started/installation/" target="_blank" role="button">Download MDB UI KIT <i class="fas fa-download ms-2"></i></a>
          <a class="btn btn-danger me-2" target="_blank" href="https://mdbootstrap.com/docs/standard/" role="button">Learn more</a>
          <a class="btn btn-success me-2" target="_blank" href="https://mdbootstrap.com/docs/standard/getting-started/" role="button">Tutorials</a>
          <a class="btn btn-dark me-2" target="_blank" href="https://github.com/mdbootstrap/mdb-ui-kit" role="button">GitHub <i class="fab fa-github ms-2"></i></a>


        </div>
      </div>
    </div>

  </div>
  <!-- Mask & flexbox options-->
</div>
<!-- Full Page Intro -->

<script>
var music = document.getElementById('music'); // id for audio element
var duration = music.duration; // Duration of audio clip, calculated here for embedding purposes
var pButton = document.getElementById('pButton'); // play button
var playhead = document.getElementById('playhead'); // playhead
var timeline = document.getElementById('timeline'); // timeline

// timeline width adjusted for playhead
var timelineWidth = timeline.offsetWidth - playhead.offsetWidth;

// play button event listenter
pButton.addEventListener("click", play);

// timeupdate event listener
music.addEventListener("timeupdate", timeUpdate, false);

// makes timeline clickable
timeline.addEventListener("click", function (event) {
    moveplayhead(event);
    music.currentTime = duration * clickPercent(event);
}, false);

// returns click as decimal (.77) of the total timelineWidth
function clickPercent(event) {
    return (event.clientX - getPosition(timeline)) / timelineWidth;
}

// makes playhead draggable
playhead.addEventListener('mousedown', mouseDown, false);
window.addEventListener('mouseup', mouseUp, false);

// Boolean value so that audio position is updated only when the playhead is released
var onplayhead = false;

// mouseDown EventListener
function mouseDown() {
    onplayhead = true;
    window.addEventListener('mousemove', moveplayhead, true);
    music.removeEventListener('timeupdate', timeUpdate, false);
}

// mouseUp EventListener
// getting input from all mouse clicks
function mouseUp(event) {
    if (onplayhead == true) {
        moveplayhead(event);
        window.removeEventListener('mousemove', moveplayhead, true);
        // change current time
        music.currentTime = duration * clickPercent(event);
        music.addEventListener('timeupdate', timeUpdate, false);
    }
    onplayhead = false;
}
// mousemove EventListener
// Moves playhead as user drags
function moveplayhead(event) {
    var newMargLeft = event.clientX - getPosition(timeline);

    if (newMargLeft >= 0 && newMargLeft <= timelineWidth) {
        playhead.style.marginLeft = newMargLeft + "px";
    }
    if (newMargLeft < 0) {
        playhead.style.marginLeft = "0px";
    }
    if (newMargLeft > timelineWidth) {
        playhead.style.marginLeft = timelineWidth + "px";
    }
}

// timeUpdate
// Synchronizes playhead position with current point in audio
function timeUpdate() {
    var playPercent = timelineWidth * (music.currentTime / duration);
    playhead.style.marginLeft = playPercent + "px";
    if (music.currentTime == duration) {
        pButton.className = "";
        pButton.className = "fas fa-play";
    }
}

//Play and Pause
function play() {
    // start music
    if (music.paused) {
        music.play();
        // remove play, add pause
        pButton.className = "";
        pButton.className = "fas fa-pause";
    } else { // pause music
        music.pause();
        // remove pause, add play
        pButton.className = "";
        pButton.className = "fas fa-play";
    }
}

// Gets audio file duration
music.addEventListener("canplaythrough", function () {
    duration = music.duration;
}, false);

// getPosition
// Returns elements left position relative to top-left of viewport
function getPosition(el) {
    return el.getBoundingClientRect().left;
}
</script>

</body>
</html>