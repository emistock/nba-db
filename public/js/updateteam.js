/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update team based on id
*/

function updateTeam(id){
    $.ajax({
        url: '/teams/' + id,
        type: 'PUT',
        data: $('#update-team').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
