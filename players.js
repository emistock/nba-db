/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getTeams(res, mysql, context, complete){
        mysql.pool.query("SELECT id, name FROM team", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.teams  = results;
            complete();
        });
    }

    function getPlayers(res, mysql, context, complete){
        mysql.pool.query("SELECT player.id, CONCAT(player.fname,' ',player.lname) AS combinedname, team.name AS team_id, age, fg, player.ppg FROM player INNER JOIN team ON team_id = team.id", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.players = results;
            complete();
        });
    }

    function getPlayer(res, mysql, context, id, complete){
        var sql = "SELECT player.id, player.fname, player.lname, team_id, age, fg, ppg FROM player WHERE id = ?";
        var inserts = [id];
        mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.player = results[0];
            complete();
        });
    }

    /*display all players*/

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteplayer.js"];
        var mysql = req.app.get('mysql');
        getTeams(res, mysql, context, complete);
        getPlayers(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('players', context);
            }

        }
    });

    /* display one player for updating */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["selectedteam.js", "updateplayer.js"];
        var mysql = req.app.get('mysql');
        getPlayer(res, mysql, context, req.params.id, complete);
        getTeams(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('update-players', context);
            }

        }
    });

    /* add a player  */

    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "INSERT INTO player (fname, lname, team_id, age, fg, ppg) VALUES (?,?,?,?,?,?)";
        var inserts = [req.body.fname, req.body.lname, req.body.team_id, req.body.age, req.body.fg, req.body.ppg];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
              res.redirect('/players');
            }
        });
    });

    /* send data to update player */

    router.put('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "UPDATE player SET fname=?, lname=?, team_id=?, age=?, fg=?, ppg=? WHERE id=?";
        var inserts = [req.body.fname, req.body.lname, req.body.team_id, req.body.age, req.body.fg, req.body.ppg, req.params.id];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
                res.status(200);
                res.end();
            }
        });
    });

    /* delete a player */

    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM player WHERE id = ?";
        var inserts = [req.params.id];
        sql = mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.status(400);
                res.end();
            }else{
                res.status(202).end();
            }
        })
    })
    return router;
   }();
