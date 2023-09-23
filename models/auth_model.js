const mongoose=require('mongoose')

const Schema=mongoose.Schema

const authSchema= new Schema(
    {
        username:{
            type: String,
            required: true,
            unique: true
        },
        lastname:{
            type: String,
            required: true,
            select: false
        },
        refreshToken:{
            type: String,
            select:false
        }
    }
)
module.exports=mongoose.model('User',authSchema)



