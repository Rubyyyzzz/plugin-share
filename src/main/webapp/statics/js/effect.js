var effect = (function($) {
	return {
		//二级菜单效果：S
		header_init: function() {
			var headers = document.getElementsByClassName("header-content");
			for(var i = 0; i < headers.length; i++) {
				if(i == 5) continue;
				(function(i) {
					$('.header-content').eq(i).hover(function() {
							$('.my-second-list').eq(i).animate({}, "0", function() {
								$(this).css({
									"display": "block"
								});
							});
						},
						function() {
							$('.my-second-list').eq(i).animate({}, "1000", function() {
								$(this).css({
									"display": "none"
								});
							});
						});
					$('.my-second-list').eq(i).hover(function() {
							$('.my-second-list').eq(i).animate({}, "0", function() {
								$(this).css({
									"display": "block"
								});
							});
						},
						function() {
							$('.my-second-list').eq(i).animate({
								"opacity": "0"
							}, "1000", function() {
								$(this).css({
									"display": "none",
									"opacity": "1.0"
								});
							});
						});
				})(i);
			}
		}
		//二级菜单效果：E
	};

}(jQuery));