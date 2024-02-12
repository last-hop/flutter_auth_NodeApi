const express = require('express');
const router = express.Router();
const { signup, signin, logout } = require('../controllers/authController');


//authentication routes for the Api 


// /api/signup
router.post('/signup', signup);
// /api/signin
router.post('/signin', signin);
// /api/logout
router.get('/logout', logout);

module.exports = router;