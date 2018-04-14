/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
var express = require('express');
var router = express.Router();

function getPlayers(res, mysql, context, input1, input2, input3, complete){
    var sql = "SELECT player.id, CONCAT(player.fname,' ',player.lname) AS combinedname, team.name AS team_id, age, fg, player.ppg  FROM player INNER JOIN team ON team_id = team.id WHERE player.fname LIKE ? OR player.lname LIKE ? OR CONCAT(player.fname,' ',player.lname) = ?";
    var inserts = [input1,input2,input3];
    mysql.pool.query(sql, inserts, function(error, results, fields){
        if(error){
            res.write(JSON.stringify(error));
            res.end();
        }
        context.players = results;
        complete();
    });
}

router.get('/:name', function(req, res){
    callbackCount = 0;
    var context = {};
    context.jsscripts = ["deleteplayer.js"];
    var mysql = req.app.get('mysql');
    getPlayers(res, mysql, context, '%'+req.params.name+'%','%'+req.params.name+'%',req.params.name, complete);
    function complete(){
        callbackCount++;
        if(callbackCount >= 1){
            res.render('player-search', context);
        }

    }
});


return router;
}();
