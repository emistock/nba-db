/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete coach by id value from database
*/

function deleteCoach(id){
    $.ajax({
        url: '/coaches/' + id,
        type: 'DELETE',
        success: function(result){
          window.location.reload(true);
        }
    })
};
