/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete player by id value from database
*/

function deletePlayer(id){
    $.ajax({
        url: '/players/' + id,
        type: 'DELETE',
        success: function(result){
          window.location.reload(true);
        }
    })
};
