const JWT=require("jsonwebtoken")
require('dotenv').config()

module.exports=function authenticate(req,res,next){
    const headers=req.headers['authorization']
    const token=headers.split(' ')[1]
    console.log(token)
    if(token==null) return res.sendStatus(401);
    JWT.verify(token,process.env.ACCESS_TOKEN_SECRET,(err,user)=>{
        if(err) return res.sendStatus(403)
        req.user=user;
        next();
    })

}
