/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Select player with player name
*/
function selectPlayer(name){
  $.ajax({
              type: 'GET',
              url: '/search/' + name,
              success: function(result){
                      window.location.reload(true);
              }
      })
}
