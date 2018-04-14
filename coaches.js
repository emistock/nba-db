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

    function getCoaches(res, mysql, context, complete){
        mysql.pool.query("SELECT head_coach.id, CONCAT(head_coach.fname,' ',head_coach.lname) AS combinedname, team.name AS team_id, age, years FROM head_coach INNER JOIN team ON team_id = team.id", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.coaches = results;
            complete();
        });
    }

    function getCoach(res, mysql, context, id, complete){
        var sql = "SELECT head_coach.id,head_coach.fname, head_coach.lname, team_id, age, years FROM head_coach WHERE id = ?";
        var inserts = [id];
        mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.coach = results[0];
            complete();
        });
    }

    /*display all coaches*/

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deletecoach.js"];
        var mysql = req.app.get('mysql');
        getTeams(res, mysql, context, complete);
        getCoaches(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('coaches', context);
            }

        }
    });

    /* display one coach to update */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["selectedteam.js", "updatecoach.js"];
        var mysql = req.app.get('mysql');
        getCoach(res, mysql, context, req.params.id, complete);
        getTeams(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('update-coaches', context);
            }

        }
    });

    /* add a coach */

    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "INSERT INTO head_coach (fname, lname, team_id, age, years) VALUES (?,?,?,?,?)";
        var inserts = [req.body.fname, req.body.lname, req.body.team_id, req.body.age, req.body.years];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
              res.redirect('/coaches');
            }
        });
    });

    /* send update data for coach */

    router.put('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "UPDATE head_coach SET fname=?, lname=?, team_id=?, age=?, years=? WHERE id=?";
        var inserts = [req.body.fname, req.body.lname, req.body.team_id, req.body.age, req.body.years, req.params.id];
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

    /* delete coach */

    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM head_coach WHERE id = ?";
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
