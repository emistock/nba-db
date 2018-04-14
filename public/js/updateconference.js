/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update conference based on id
*/

function updateConference(id){
    $.ajax({
        url: '/conference/' + id,
        type: 'PUT',
        data: $('#update-conference').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
