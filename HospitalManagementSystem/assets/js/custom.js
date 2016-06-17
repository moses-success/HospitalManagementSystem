/// <reference path="C:\Users\MOSES SUCCESS\documents\visual studio 2015\Projects\Hospital Management System\Hospital Management System\Models/selectionService.asmx" />
/// <reference path="C:\Users\MOSES SUCCESS\documents\visual studio 2015\Projects\Hospital Management System\Hospital Management System\Models/selectionService.asmx" />

$(function () {
    $('#<%= searchtxt.ClientID %> ').autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "selectionService.asmx/SelectUsers",
                data: "{' selectedName':'" + request.term + "'}",
                type: "POST",
                datetype:"json",
                contenttype: "application/json;charset=utf-8",
                success: function (result) {
                    respone(result.d);

                },
                error: function(result) {
                alert("Error Processing Instruction");
        }
    });  
        }
    });
     
});



$(function () {
    toastr.info('Are you from India?'); // Display a info toast, with no title
});
