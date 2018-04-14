/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
    var express = require('express');
    var router = express.Router();

    /* get teams to populate in dropdown */
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

    /* get playoffs to populate in dropdown */
    function getPlayoffs(res, mysql, context, complete){
        sql = "SELECT id, name FROM playoffs";
        mysql.pool.query(sql, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end()
            }
            context.playoffs = results
            complete();
        });
    }

    function getTeam(res, mysql, context, id, complete){
        var sql = "SELECT id, name FROM team WHERE id = ?";
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

    function getPlayoff(res,mysql,context,id,complete){
      var sql = "SELECT id, name FROM playoffs WHERE id = ?";
      var inserts = [id];
      mysql.pool.query(sql, inserts, function(error, results, fields){
          if(error){
              res.write(JSON.stringify(error));
              res.end();
          }
          context.playoff = results[0];
          complete();
      });
    }

    /* get teams with playoff games
     */
    function getTeamsWithPlayoffs(res, mysql, context, complete){
        sql = "SELECT playoff_id, team_id, team.name AS team_name, playoffs.name AS playoff_name FROM team INNER JOIN teams_playoffs on team.id = teams_playoffs.team_id INNER JOIN playoffs on playoffs.id = teams_playoffs.playoff_id ORDER BY team_name, playoff_name"
         mysql.pool.query(sql, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end()
            }
            context.teams_with_playoffs = results
            complete();
        });
    }


    /* List teams with playoffs along with
     * displaying a form to associate a team with multiple playoff games
     */
    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteteamsplayoffs.js"];
        var mysql = req.app.get('mysql');
        var handlebars_file = 'teams_playoffs';

        getTeams(res, mysql, context, complete);
        getPlayoffs(res, mysql, context, complete);
        getTeamsWithPlayoffs(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 3){
                res.render(handlebars_file, context);
            }
        }
    });

    /* Associate playoffs with a team and add */
    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var games = req.body.playoffs;
        var team = req.body.team_id;
        for (let playoffs of games) {
          var sql = "INSERT INTO teams_playoffs (team_id, playoff_id) VALUES (?,?)";
          var inserts = [team, playoffs];
          sql = mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                console.log(error)
            }
          });
        }
        res.redirect('/teams_playoffs');
    });

    /* Display row for updating purposes */

    router.get('/tid/:team_id/pid/:playoff_id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["updateteamsplayoffs.js","selectedplayoffs.js","selectedteam.js"];
        var mysql = req.app.get('mysql');
        getPlayoff(res, mysql, context, req.params.playoff_id, complete);
        getTeam(res, mysql, context, req.params.team_id, complete);
        getTeams(res, mysql, context, complete);
        getPlayoffs(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 4){
                res.render('update-teams-playoffs', context);
            }

        }
    });


    /* update entries */
    router.put('/tid/:team_id/pid/:playoff_id', function(req, res){

        var mysql = req.app.get('mysql');
        var sql = "UPDATE teams_playoffs SET team_id = ?, playoff_id = ?  WHERE team_id = ?  AND playoff_id = ?";
        var inserts = [req.body.team_id,req.body.playoff_id,req.params.team_id, req.params.playoff_id];
        sql = mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.status(400);
                res.end();
            }else{
                res.status(202).end();
            }
        })
    });

    /* delete rows */
    router.delete('/tid/:team_id/pid/:playoff_id', function(req, res){

        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM teams_playoffs WHERE playoff_id = ? AND team_id = ?";
        var inserts = [req.params.playoff_id, req.params.team_id];
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
