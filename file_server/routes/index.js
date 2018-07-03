var express = require('express');
var router = express.Router();
const mysql = require('mysql');

const connection = mysql.createConnection({   //连接mysql数据库
    host: 'localhost',
    user: 'root',
    password: 'kyl666666',
    database: 'sec'
});

connection.connect();

/* GET home page. */
router.get('/sec/sec2', function(req, res, next) {

    let data = 'select * from sec2';

    connection.query(data, function(error, result, fields){
        if(error) throw error;
        res.status(200).json(result);
    })
});
router.get('/sec/sec3', function(req, res, next) {
    
    let data = 'select * from sec3';

    connection.query(data, function(error, result, fields){
        if(error) throw error;
        res.status(200).json(result);
    })
});
router.get('/sec/sec4', function(req, res, next) {
    
    let data = 'select * from sec4';

    connection.query(data, function(error, result, fields){
        if(error) throw error;
        res.status(200).json(result);
    })
});
router.get('/sec/sec5', function(req, res, next) {
    
    let data = 'select * from sec5';

    connection.query(data, function(error, result, fields){
        if(error) throw error;
        res.status(200).json(result);
    })
});
router.get('/sec/sec6', function(req, res, next) {
    
    let data = 'select * from sec6';

    connection.query(data, function(error, result, fields){
        if(error) throw error;
        res.status(200).json(result);
    })
});


module.exports = router;
