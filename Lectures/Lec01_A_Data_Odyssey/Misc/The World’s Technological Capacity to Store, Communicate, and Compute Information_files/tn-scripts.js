jQuery(document).ready(
		
		//tabs
		
		function($) {
			 "use strict";
			$('.tabber-container').each(function() {
				$(this).find(".tabber-content").hide();
				$(this).find("ul.tabs li:first").addClass("active").show();
				$(this).find(".tabber-content:first").show();
			});
			$("ul.tabs li").click(
					function(e) {
						$(this).parents('.tabber-container').find("ul.tabs li")
								.removeClass("active");
						$(this).addClass("active");
						$(this).parents('.tabber-container').find(
								".tabber-content").hide();
						var activeTab = $(this).find("a").attr("href");
						$(this).parents('.tabber-container').find(activeTab)
								.fadeIn();
						e.preventDefault();
					});
			$("ul.tabs li a").click(function(e) {
				e.preventDefault();
			});

			//carousel
			
			$('.carousel').flexslider({
				animation : 'slide',
				itemWidth : 142,
				itemMargin : 23,
				move : 2,
				slideshow : false,
				controlNav: false,
				directionNav: false,
			});
			
			$('.carousel-prev').on('click', function(){
				$('.carousel').flexslider('prev')
				return false;
			});
			
			$('.carousel-next').on('click', function(){
				$('.carousel').flexslider('next')
				return false;
			});
			
			//video type page carousel
			
			$('.tv-carousel').flexslider({
				animation : 'slide',
				itemWidth : 141,
				itemMargin : 24,
				move : 2,
				slideshow : false,
				controlNav : false,
				directionNav: false,
			});
			$('.tv-prev').on('click', function(){
				$('.tv-carousel').flexslider('prev')
				return false;
			});
			
			$('.tv-next').on('click', function(){
				$('.tv-carousel').flexslider('next')
				return false;
			});
		
			//video type page ajax
			
			$('.ajax').click(
					function(event) {
						event.preventDefault();
						var post_id = $(this).attr("href");
		
						jQuery.ajax({
							post : post_id,
							type : "POST",
							data : {id : post_id},
							success : function(output) {
								$(".tv-video-wrapper").replaceWith($('.tv-video-wrapper', output));
								$(".tv-format-title").replaceWith($('.tv-format-title', output));
								$(".tv-format-subtitle").replaceWith($('.tv-format-subtitle', output));
							}
						});
					});
					
			//keyboard navigation next prev 		
			   $(document).keydown(function(e) {
					var url = false;
				if (e.which == 37) {  // Left arrow key code
						url = $('.previous-title a').attr('href');
					}
				else if (e.which == 39) {  // Right arrow key code
						url = $('.next-title a').attr('href');
				}
				if (url) {
						window.location = url;
				}
			});
			
			//menu button for responsive mobile
			
			
			$("#mob-menu").click(function() {
				$("#main-nav ul").toggleClass("active");
				$(this).toggleClass("active");
				
			});
	
		
	//main slider widget
	
	$('.flexslider').flexslider({
			animation: slide_picker,
			slideshowSpeed: 8000,
			controlNav: false,
			keyboard: false,
			pauseOnHover: true,
			start: function(slider){
	   $('.flexslider').fadeTo( "fast" , 1);
	    }
		});
		
	  //Gallery slider
			  $('.post-page-gallery-thumbnails').flexslider({
				animation: 'slide',
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				itemWidth: 166,
				itemMargin: 1,
				directionNav: true,
				asNavFor: '.post-page-gallery-slider'
			  });
			   
			  $('.post-page-gallery-slider').flexslider({
				animation: slide_picker,
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				sync: '.post-page-gallery-thumbnails'
			  });		
		//ticker
		
		$('.ticker').flexslider({
			animation: slide_picker,
			slideshowSpeed: 8000,
			controlNav: false,
			keyboard: false,
			directionNav: false,
			pauseOnHover: true,
			direction: 'vertical',
		});
		
		$('.tick-prev').on('click', function(){
			$('.ticker').flexslider('prev')
			return false;
		});
		
		$('.tick-next').on('click', function(){
			$('.ticker').flexslider('next')
			return false;
		});
		
		//wide slider	
		$('.wide-slider').flexslider({
				animation: slide_picker,
				slideshowSpeed: 8000,
				manualControls: $(".wide-slider-control li"),
				controlNav: true,
				directionNav: false,
				pauseOnHover: true,
				start: function(slider) {
   			$('#slider-container').fadeTo( "fast" , 1);
			$('.wide-slider-control').fadeTo( "fast" , 1);
			}
			});
			
		//featured category
		$('.cat-slider').flexslider({
				animation: slide_picker,
				manualControls: $(".feat-cat-categories li a"),
				controlNav: true,
				slideshow : false,
				directionNav: false,
				start: function(slider) {

			}
			});

			//left widget in #primary margin

			$('#primary .home-widget').each(function(){
					$(this).filter(function() {
				return $(this).width() < 350;}).filter(function() {				
				return $(this).offset().left == $('#primary').offset().left;
				}).css('margin-right', '26px')});
					

			//First word on widget title
			$('.widget-title').each(function(index) {	
				var firstWord = $(this).text().split(' ')[0];
				var replaceWord = "<span class='first-word'>" + firstWord + "</span>";
				var newString = $(this).html().replace(firstWord, replaceWord);
				$(this).html(newString);
			});		
			
				//super-menu scripts
				
				$(".menu-link, .menu-item-has-children").mouseenter(function() {
						$(".menu-item-object-category").removeClass("active");										
						if ($(this).hasClass("menu-item-has-children")){	
							$(this).addClass("active");
						}else{
							$(this).parent().addClass("active");
						}
				});	
				
			//Magic-Line
			
				  var $el, leftPos, newWidth,
				  $mainNav = $(".sub-menu-wrapper #menu-links");
				  $mainNav.append("<li class='magic-line'></li>");
				  var $magicLine = $(".magic-line");
					
				  $magicLine
					  .width($(".menu-link").width())
					  .css("left", $(".menu-link").position().left)
					  .data("origLeft", $magicLine.position().left)
					  .data("origWidth", $magicLine.width());			
				  
				  $(".sub-menu-wrapper .menu-link").hover(function() {			  
					  $el = $(this);
					  leftPos = $el.position().left;
					  newWidth = $el.parent().width();
						  $magicLine.animate({
							  left: leftPos,
							  width: newWidth
						  }, 100);
					  $magicLine.fadeIn(20)
				  },function() {
					  $magicLine.animate({
						  left: leftPos,
						  width: newWidth,
					  }, 100);
				  
				  });	
				  				  
				  $(".sub-menu-wrapper").hover(function() {				 
					 },function() {	
					  $magicLine.fadeOut(1) 				  
					});	
				  });