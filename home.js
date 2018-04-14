/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Render the home page
*/

module.exports = function(){
  var express = require('express');
  var router = express.Router();
  router.get('/', function(req, res){
    res.render('home');
  });


  return router;
}();
