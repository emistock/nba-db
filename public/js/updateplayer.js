/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update player based on id
*/

function updatePlayer(id){
    $.ajax({
        url: '/players/' + id,
        type: 'PUT',
        data: $('#update-player').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
