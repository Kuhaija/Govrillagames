var audio = document.getElementById('audio_bgm');
             
document.getElementById('togglebgm').addEventListener('click', function (e)
{
e = e || window.event;
audio.muted = !audio.muted;
e.preventDefault();
}, false);
