const User = require('../models/userModel');
const ErrorResponse = require('../utils/errorResponse');

//below function uses usermodel to push  data in mongoDB 
// It verifies for any previous accounts registered for that email else create a New account 
exports.signup = async ( req , res , next )=>{
  //  console.log("skdfsk",req.body);
    const { email }= req.body;
    const userExist = await User.findOne({email});
    
    if(userExist){
        return next(new ErrorResponse("Email allready Registered" ,400));
    }
    try {
        const user = await User.create(req.body);
        res.status(201).json({
            success: true,
            user
        })
    } catch (error) {
        next(error);
    }
}

// Below function check for the registered user data for the email entered to login to account 
// If found emial and user has its corressponding password then user is authenticated 


exports.signin = async (req, res, next) => {

    try {
        const { email, password } = req.body;
        //validation
        if (!email) {
            return next(new ErrorResponse("please add an email", 403));
        }
        if (!password) {
            return next(new ErrorResponse("please add a password", 403));
        }

        //check user email
        const user = await User.findOne({ email });
        if (!user) {
            return next(new ErrorResponse("invalid credentials", 400));
        }
        //check password
        const isMatched = await user.comparePassword(password);
        if (!isMatched) {
            return next(new ErrorResponse("invalid credentials", 400));
        }

        sendTokenResponse(user, 200, res);

    } catch (error) {
        next(error);
    }
}


//JWT is used to encrypt the response in form of token whch allows to verify user and permit to access account .

const sendTokenResponse = async (user, codeStatus, res) => {
    const token = await user.getJwtToken();
    res
        .status(codeStatus)
        .cookie('token', token, { maxAge: 60 * 60 * 1000, httpOnly: true })
        .json({ success: true, token, user })
}


// log out
exports.logout = (req, res, next) => {
    res.clearCookie('token');
    res.status(200).json({
        success: true,
        message: "logged out"
    })
}
