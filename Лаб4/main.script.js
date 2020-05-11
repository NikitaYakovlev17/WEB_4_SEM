$(document).ready(function(){
	let circle = $('.circle');  /* обращаемся к селектору circle */
	let circle2 = $('.circle2');


	function randomInteger(min, max) {
	  // получить случайное число от (min-0.5) до (max+0.5)
	  let rand = min - 0.5 + Math.random() * (max - min + 1);
	  return Math.round(rand);
	}

	function makeAnimation1(dir, dir2, dir3, dir4) {
		circle.animate({
			top: dir + '%',
			left:  dir2 +'%'
		}, 1000, "linear")

		circle2.animate({
			top: dir3 + '%',
			right: dir4 + '%',
		}, 1000, "linear")
	}

	makeAnimation1(30, 60, 60, 70);

	setInterval(function() {
		makeAnimation1(randomInteger(30, 70), randomInteger(30, 70), randomInteger(10, 90), randomInteger(10, 90));
	}, 1000)	
});	