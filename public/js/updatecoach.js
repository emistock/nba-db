/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update coach based on id
*/

function updateCoach(id){
    $.ajax({
        url: '/coaches/' + id,
        type: 'PUT',
        data: $('#update-coach').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
