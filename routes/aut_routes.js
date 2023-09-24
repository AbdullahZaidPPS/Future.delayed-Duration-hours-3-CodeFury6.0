const Router=require('express')
const middleware_aut=require("../middlewares/authTokenChecker.js")
const Controller=require('../controllers/auth_coontroller.js')
const router=Router.Router();

router.get('/login',middleware_aut,Controller.login_get)
router.post('/signup',Controller.signup_post)
router.post('/token',Controller.token_post)

module.exports=router;