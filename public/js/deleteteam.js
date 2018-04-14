/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete team by id value from database
*/

function deleteTeam(id){
    $.ajax({
        url: '/coaches/' + id,
        type: 'DELETE',
        success: function(result){
          window.location.reload(true);
        }
    })
};
