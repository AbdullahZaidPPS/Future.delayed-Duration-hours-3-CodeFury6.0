const mongoose=require("mongoose")
require("dotenv").config();
const JWT=require('jsonwebtoken')


module.exports.login_get= async (req,res)=>{
    const User=mongoose.model('User')
    const foundUsername=await User.findOne({"username":req.user}).select("lastname").exec()
    if(!foundUsername) return res.status(409).send({"message":"Username not exists"})
    res.send(foundUsername.lastname)
} 


module.exports.signup_post= async (req,res)=>{
    try{
        const User=mongoose.model('User')
        const foundUsername=await User.findOne({"username":req.body.username})
        console.log(req.body.username)
        if(foundUsername) return res.status(409).send({"message":"Username exists"})
        const accessToken=await generateAccessToken({"username": req.body.username})
        const refreshToken=await JWT.sign(req.body.username,process.env.REFRESH_TOKEN_SECRET)
        await User.create({
            "username":req.body.username,
            "lastname":req.body.lastname,
            "refreshToken": refreshToken
        })
        return res.status(200).json({"Authtoken":accessToken,"refreshToken":refreshToken});
    }
    catch(error)
    {
        if (error instanceof mongoose.Error.ValidationError) {
            return res.status(400).json({ error: 'Validation error', details: error.errors });
          } else {
            console.error(error);
            return res.status(500).json({ error: 'Internal server error' });
          }
    }
}

module.exports.token_post=async (req,res)=>{
    const User=mongoose.model('User')
    const refreshToken=req.body.refreshToken
    if(refreshToken==null) return res.sendStatus(401)
    const foundUserToken=await User.findOne({"refreshToken": refreshToken})
    if(!foundUserToken) return res.sendStatus(403)
    JWT.verify(refreshToken,process.env.REFRESH_TOKEN_SECRET,(err,user)=>{
            if(err) return res.sendStatus(403)
            const accessToken=generateAccessToken({"username": user.username})
            return res.json({"Authtoken":accessToken})
    })

}

 function generateAccessToken(user) {
    return  JWT.sign(user,process.env.ACCESS_TOKEN_SECRET,{ expiresIn: '30s'})
}