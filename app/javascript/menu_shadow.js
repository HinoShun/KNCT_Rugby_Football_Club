window.addEventListener('load', function(){	
  //メニューで影
  const menus = document.querySelectorAll(".menu_button");	
  menus.forEach(function(menu) {	
    menu.addEventListener('mouseover', function() {	
      this.setAttribute("style", "box-shadow: 0 10px 25px 0 rgba(255, 255, 255, 1);");	
    });	
    menu.addEventListener('mouseout', function() {	
      this.removeAttribute("style", "box-shadow: 3px 3px 3px 3px rgba(255, 255, 255, 1);");	
    });	
  });	
});	