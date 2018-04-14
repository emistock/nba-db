/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete playoff by id value from database
*/

function deletePlayoff(id){
    $.ajax({
        url: '/playoffs/' + id,
        type: 'DELETE',
        success: function(result){
          window.location.reload(true);
        }
    })
};
