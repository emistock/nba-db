/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update playoff based on id
*/

function updatePlayoff(id){
    $.ajax({
        url: '/playoffs/' + id,
        type: 'PUT',
        data: $('#update-playoff').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
