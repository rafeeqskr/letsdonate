$(document).ready(function() {

  $('.submit_form').change(function(){
    if( $(this).val() != "Select")
    $('.submit_form').closest('form').trigger('submit');
  });

  $('.remove_row').click(function(){
    $(this).closest('.row').remove();
  });

  $('.get_users').click(function(){
    $.ajax({
  			type : "GET",
  			url : '/ngos/' + $(this).data("id") + '/users',
  			dataType : "html",
  			success : function(data) {
          $('#user_content').html(data);
          $('.remove_row').click(function(){
            $(this).closest('.row').remove();
          });
  			}
  		});
  });
})
var x;
$(document).ready(function(){
//initializing datepicker
  $(".datepicker").datepicker({
    dateFormat: "dd-mm-yy"
  });

 $("#expiry_clone_field").change(function(){
   //alert("changed");
   console.log($(this).val());
   var selected_date = $(this).val();
   x = selected_date
  //  $("#donation_expiry_1i").val(selected_date.split('-')[2].replace("0",""));
  //  $("#donation_expiry_2i").val(selected_date.split('-')[1].replace("0",""));
  //  $("#donation_expiry_3i").val(selected_date.split('-')[0]);
  //  $("#donation_expiry_4i").val("00");
  //  $("#donation_expiry_5i").val("00");

 });

$(".imgLiquidFill").imgLiquid({fill:true});
// expiry date for food category
 $('select').on('change', function () {
   if ($(this).val() === 'Food') {
     $('#food_expiry').show();
   } else {
     $('#food_expiry').hide();
   }
 });

});


window.setTimeout(function() {
  $(".alert").fadeTo(1500, 0).slideUp(100, function(){
    $(this).remove();
  });
}, 5000);
