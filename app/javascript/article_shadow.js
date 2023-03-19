window.addEventListener('load', function(){	
  //記事が画像で影
  const articles = document.querySelectorAll(".article_image");	
  articles.forEach(function(article) {	
    article.addEventListener('mouseover', function() {	
      this.setAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");	
    });	
    article.addEventListener('mouseout', function() {	
      this.removeAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.5);");	
    });	
  });	
});	