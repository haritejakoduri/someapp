const express=require('express');
const nsmarty=require('nsmarty');
const app =express();
const util=require('util');
nsmarty.tpl_path = __dirname+'/template/';
app.use(express.json());
app.use(express.static('public'))
app.use(express.urlencoded({extended:true}));
app.get("/",(req,res)=>{
    nsmarty.clearCache('index.tpl');
    var stream=nsmarty.assign('index.tpl');
    util.pump(stream,res);
})
app.listen(4000)