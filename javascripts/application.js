$(document).ready(function(){
	initMenu();
});

function initMenu(){
	$('#menuTrigger').click(function(e) {

		e.preventDefault();
		triggerEffect(this,'toolbarContainer','slide', '/images/rbnDownButton.png', '/images/rbnUpButton.png');
	});
}

function triggerEffect(srcElement,divId, effect, firstImg, secondImg){

  $("#" + divId).slideToggle("normal", function(){
	image = srcElement.getElementsByTagName('img')[0];
	var new_image = $(image).attr("src").match(firstImg) ? secondImg : firstImg;
    $(image).attr("src", new_image); 
  });
  return false;
}
