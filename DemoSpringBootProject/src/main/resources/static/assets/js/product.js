var indexPage = 1;

    $(document).ready(function(){
          loadPage(indexPage);
    });

    function loadPage(indexPage){
       $.ajax({
           type:'post',
           url:'/product/queryByPage/' + indexPage,
           dataType:'JSON',
           contentType:'application/json',
           success: function(data){
               console.log(data);
               
               $('#showproduct').empty("");
               
               if(data==null){
            	   $('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
               }else{
            	   var table = $('#showproduct'); 
            	   table.append("<tr id='ptitle'><th>ID</th><th>Product Name</th><th>Product Price</th><th>Date</th><th>Note</th></tr>");

            	   //data:jsonArray n:jsonObject
            	   $.each(data, function(i,n){
            		   var tr = "<tr align='center'>" + "<td>" + n.id + "</td>" +
            		            "<td>" + n.pname + "</td>" + "<td>" + n.price + "</td>" +
            		            "<td>" + n.pdate + "</td>" + "<td>" + n.note + "</td>" +
            		            "</tr>";
            		   table.append(tr);
                   });           	   
               }
           }
       });
    }

    function change(page){
    	indexPage = page;
    	loadPage(indexPage);
    } 