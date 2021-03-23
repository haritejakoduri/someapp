const express=require('express');
const nsmarty=require('nsmarty');
const app =express();
const util=require('util');
nsmarty.tpl_path = __dirname+'/template/';
app.use(express.json());
app.use(express.static('public'))
app.use(express.urlencoded({extended:true}));
app.get('/',(req,res)=>{
    res.redirect('/search')
})
app.get("/search",(req,res)=>{
    nsmarty.clearCache('search.tpl');
    var stream=nsmarty.assign('search.tpl');
    util.pump(stream,res);
})
app.listen(4000)