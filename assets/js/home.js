$(document).ready(function() {
    $( '#birthday' ).datepicker();

    $('#submitBtn').click( function(e) {
        var name = $('#name').val();
        var birthday = $('#birthday').val();
        var likes = $('#likes').val();
        var dislikes = $('#dislikes').val();
        var description = $('#description').val();

        $.ajax({
            type: 'POST',
            url:'/gugma/index.cfm?action=home_ajax.save',
            data:{
                name: name,
                birthday: birthday,
                likes: likes,
                dislikes: dislikes,
                description: description
            },
            success:function(data){
                window.location.href = "/gugma";
            }
        });

        return false;
    });

    $('#editBtn').click( function(e) {
        var id = $('#editBtn').data('id');
        var name = $('#name').val();
        var birthday = $('#birthday').val();
        var likes = $('#likes').val();
        var dislikes = $('#dislikes').val();
        var description = $('#description').val();

        $.ajax({
            type: 'POST',
            url:'/gugma/index.cfm?action=home_ajax.edit',
            data:{
                id: id,
                name: name,
                birthday: birthday,
                likes: likes,
                dislikes: dislikes,
                description: description
            },
            success:function(data){
                window.location.href = "/gugma";
            }
        });

        return false;
    });




    $('.delete').click( function(e) {
        var id = $(this).data('id');

        $.ajax({
            type: 'POST',
            url:'/gugma/index.cfm?action=home_ajax.delete',
            data:{
                id: id
            },
            success:function(data){
                window.location.href = "/gugma";
            }
        });

        return false;
    });



});