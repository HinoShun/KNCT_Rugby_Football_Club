window.addEventListener('load', function(){	
  const letters = document.querySelectorAll(".letter");	
  letters.forEach(function(letter) {	
    letter.addEventListener('mouseover', function() {	
      this.setAttribute("style", "box-shadow: -1px -1px 3px 3px rgba(0, 0, 0, 0.5);");	
    });	
    letter.addEventListener('mouseout', function() {	
      this.removeAttribute("style", "box-shadow: -1px -1px 3px 3px rgba(0, 0, 0, 0.5);");	
    });	
  });	
});	