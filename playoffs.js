/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Functions to pull data from the database and mainpulate that data
so users can update and delete entries.
*/

module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getPlayoffs(res, mysql, context, complete){
        mysql.pool.query("SELECT id, name FROM playoffs", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.playoffs  = results;
            complete();
        });
    }

    function getPlayoff(res, mysql, context, id, complete){
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

    /*display all playoffs*/

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteplayoff.js"];
        var mysql = req.app.get('mysql');
        getPlayoffs(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 1){
                res.render('playoffs', context);
            }

        }
    });

    /* display one playoff for updating */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        context.jsscripts = ["updateplayoff.js"];
        var mysql = req.app.get('mysql');
        getPlayoff(res, mysql, context, req.params.id, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 1){
                res.render('update-playoff', context);
            }

        }
    });

    /* add a playoff */

    router.post('/', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "INSERT INTO `playoffs`(`name`) VALUES (?)";
        var inserts = [req.body.name];
        sql = mysql.pool.query(sql,inserts,function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }else{
              res.redirect('/playoffs');
            }
        });
    });

    /* send data to update playoff */

    router.put('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "UPDATE playoffs SET name=? WHERE id=?";
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

    /* delete playoff */

    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM playoffs WHERE id = ?";
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
