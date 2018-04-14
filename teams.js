/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getCoaches(res, mysql, context, complete){
        mysql.pool.query("SELECT id, CONCAT(fname,' ',lname) AS name FROM head_coach", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.coaches  = results;
            complete();
        });
    }

    function getConference(res, mysql, context, complete){
        mysql.pool.query("SELECT id, name FROM conference", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.conference  = results;
            complete();
        });
    }

    function getTeams(res, mysql, context, complete){
        mysql.pool.query("SELECT team.id, team.name, conference.name AS conference_id, standing, CONCAT(head_coach.fname,' ',head_coach.lname) AS coach_id, wins, losses, ppg, oppg FROM team INNER JOIN conference ON conference_id = conference.id INNER JOIN head_coach ON coach_id = head_coach.id", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.teams = results;
            complete();
        });
    }

    function getTeam(res, mysql, context, id, complete){
        var sql = "SELECT team.id, team.name, conference_id, standing, coach_id, wins, losses, ppg, oppg FROM team WHERE team.id = ?";
        var inserts = [id];
        mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.team = results[0];
            complete();
        });
    }

    /*display all teams*/

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteteam.js"];
        var mysql = req.app.get('mysql');
        getTeams(res, mysql, context, complete);
        getConference(res, mysql, context, complete);
        getCoaches(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 3){
                res.render('teams', context);
            }

        }
    });

    /* display one team for updating */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["selectedconference.js", "selectedcoach.js", "updateteam.js"];
        var mysql = req.app.get('mysql');
        getTeam(res, mysql, context, req.params.id, complete);
        getConference(res, mysql, context, complete);
        getCoaches(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 3){
                res.render('update-teams', context);
            }

        }
    });

    /* adds a team  */

    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "INSERT INTO team (name, conference_id, standing, coach_id, wins, losses, ppg, oppg) VALUES (?,?,?,?,?,?,?,?)";
        var inserts = [req.body.name, req.body.conference_id, req.body.standing, req.body.coach_id, req.body.wins, req.body.losses, req.body.ppg, req.body.oppg];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
              res.redirect('/teams');
            }
        });
    });

    /* sends data to update team */

    router.put('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "UPDATE team SET name=?, conference_id=?, standing=?, coach_id=?, wins=?, losses=?, ppg=?, oppg=? WHERE id=?";
        var inserts = [req.body.name, req.body.conference_id, req.body.standing, req.body.coach_id, req.body.wins, req.body.losses, req.body.ppg, req.body.oppg, req.params.id];
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

    /* delete a team */

    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM team WHERE id = ?";
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
