$(document).ready(function() {
  $('.get_users').click(function(){
    $.ajax({
  			type : "GET",
  			url : '/ngos/' + $(this).data("id") + '/users',
  			dataType : "html",
  			success : function(data) {
          console.log(data);
  			}
  		});
  });

});
