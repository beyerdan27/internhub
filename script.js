//connect node to postgres
//var pg = require('pg');
//do this or the world blows up: export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
import pg from 'pg';
const conn = "postgresql://db4@localhost:5432/postgres";
const client = new pg.Client(conn);
await client.connect();
var query = await client.query("SELECT * FROM opportunities");
console.log(query.rows);
await client.end();
$("h1").hide();