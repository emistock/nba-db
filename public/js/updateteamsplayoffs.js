/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Update team playoff relationship based on id
*/

function updateTeamsPlayoffs(team_id, playoff_id){
  $.ajax({
      url: '/teams_playoffs/tid/' + team_id + '/pid/' + playoff_id +'/',
      type: 'PUT',
      data: $('#update-teams-playoffs').serialize(),
      success: function(result){
        window.location.href = "/teams_playoffs";
      }
  })
};
