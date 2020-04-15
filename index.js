var express = require('express');
var app = express();


var server = app.listen(5000, function () {


  var sql = require("mssql");
  let DB = 'Note_DB';
  // config for your database
  var config = {
    server: "localhost",
    authentication: {
      type: 'default',
      options: {
        userName: "sa",
        password: "root",
      },
    },
    options: {
      database: DB,
      encrypt: false,
    },
  };

  // connect to your database
  sql.connect(config, function (err) {

    if (err) console.log(err);
    let fs = require('fs')
    let logger = fs.createWriteStream('tables.txt', {
      flags: 'a' // 'a' means appending (old data will be preserved)
    })
    // create Request object
    var request = new sql.Request();
    let tables = [];
    // query to the database and get the records
    request.query(`SELECT table_name FROM ${DB}.information_schema.tables`, function (err, recordset) {

      if (err) console.log(err)

      // send records as a Y
      recordset.recordsets[0].forEach(table => {
        let tableName = table.table_name;
        let command = `SELECT count(1) as total FROM ${DB}.dbo.${tableName}`;
        // console.log(command);
        request.query(command, function (err1, recordset12) {
          if (err) console.log(err)
          if (recordset12 && recordset12.recordset[0].total > 0) {
            let command1 = `SELECT COLUMN_NAME  FROM ${DB}.INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='${tableName}' ORDER BY ORDINAL_POSITION`;

            request.query(command1, function (err1, recordset1) {
              if (err) console.log(err)
              logger.write(tableName + ",");
              let recordset = recordset1.recordset;
              let length = recordset.length;
              let index = 0;
              recordset.forEach(colume => {
                console.log(colume.COLUMN_NAME);
                logger.write(colume.COLUMN_NAME);
                index = index + 1;
                if (index < length) {
                  logger.write(',');
                }
              });
              logger.write('\n');
            });
          }
        });

      });
    });
  });
});
