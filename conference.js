/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getConferences(res, mysql, context, complete){
        mysql.pool.query("SELECT id, name FROM conference", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.conferences  = results;
            complete();
        });
    }

    function getConference(res, mysql, context, id, complete){
        var sql = "SELECT id, name FROM conference WHERE id = ?";
        var inserts = [id];
        mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.conference = results[0];
            complete();
        });
    }

    /*display all conferences*/

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteconference.js"];
        var mysql = req.app.get('mysql');
        getConferences(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 1){
                res.render('conference', context);
            }

        }
    });

    /* display one conference for purpose of updating */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["updateconference.js"];
        var mysql = req.app.get('mysql');
        getConference(res, mysql, context, req.params.id, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 1){
                res.render('update-conference', context);
            }

        }
    });

    /* add a conference */

    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "INSERT INTO `conference`(`name`) VALUES (?)";
        var inserts = [req.body.name];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
              res.redirect('/conference');
            }
        });
    });

    /* send data to update conference */

    router.put('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "UPDATE conference SET name=? WHERE id=?";
        var inserts = [req.body.name, req.params.id];
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

    /* delete a conference */

    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM conference WHERE id = ?";
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
