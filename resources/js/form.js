$(document).ready(function(){
    $(document).on('change', '.cat_id', function(){
      var cat_id=$(this).val();
      console.log(cat_id);
      var div=$(this).parent().parent().parent();
            var op=" ";

      $.ajax({
        type:'get',
        url: '/registerCategory',
        data:{'id':cat_id},
        success: function(data){

            console.log("d: "+data);
          op+= '<input type="text" class="form-control" value="'+data.price+'" name="pay" readonly required>'
          

          div.find('.pay').html(" ");
          div.find('.pay').append(op);

        },

      });

    });
});