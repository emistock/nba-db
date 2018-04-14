/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete conference by id value from database
*/

function deleteConference(id){
    $.ajax({
        url: '/conference/' + id,
        type: 'DELETE',
        success: function(result){
          window.location.reload(true);
        }
    })
};
