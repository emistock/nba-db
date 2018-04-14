/*
Author: Emily Stockenbojer
Date: 3/18/18
Description: Database credentials
*/

var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host  : '',
  user  : '',
  password: '',
  database: ''
});
module.exports.pool = pool;
