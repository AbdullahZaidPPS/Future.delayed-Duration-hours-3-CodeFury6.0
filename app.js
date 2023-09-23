const express=require("express");
const mongoose=require("mongoose");
const {userName,password}=require("./constants.js")
const router=require('./routes/aut_routes.js')
const User=require("./models/auth_model.js")
const body_parser=require("body-parser")
const cors=require("cors");
// const question = require('./routes/questions');
// const answer = require('./routes/answers');
const questionRoutes = require('./routes/questionRoutes');
const answerRoutes = require('./routes/answerRoutes');
const database = require('./config/database.js');

const app=express();


// const startServer= async(req,res) =>{
//     try {
//         await mongoose.connect('mongodb://127.0.0.1:27017', { useNewUrlParser: true, useUnifiedTopology: true });
//         console.log("Connected to MongoDB");

//     } catch (error) {
//         console.error("Error connecting to MongoDB:", error);
//     }
// }

app.use(body_parser.urlencoded({extended: true}));
app.use(body_parser.json());
// app.use(cors);


app.set('title',"how you do")
app.set('view engine', 'ejs');


// startServer();

app.get("/",(req,res)=>{
    res.render("test")
});
app.get("/testing",async (req,res)=>{
    console.log(mongoose.model("User"))
    res.send(await mongoose.model('User').find({'username':'tula'}))
    
});
app.use(router)
app.use(body_parser.json())
app.use(questionRoutes);
app.use(answerRoutes);

app.listen(4000, () => {
    console.log("Server is running on port 4000");
});
