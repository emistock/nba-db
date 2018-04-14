/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Delete team and playoff relationship by id values from database
*/

function deleteTeamsPlayoffs(team_id, playoff_id){
  $.ajax({
      url: '/teams_playoffs/tid/' + team_id + '/pid/' + playoff_id,
      type: 'DELETE',
      success: function(result){
          if(result.responseText != undefined){
            alert(result.responseText)
          }
          else {
            window.location.reload(true)
          }
      }
  })
};
