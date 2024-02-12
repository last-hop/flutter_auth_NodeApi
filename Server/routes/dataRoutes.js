const express = require('express');
const router = express.Router();
const data = require('../dummyData/data')

// Route define for all the  data in jason format stored locally 

router.get('/tasks',(req,res) =>{
    res.json(data.tasks);
});


module.exports = router;