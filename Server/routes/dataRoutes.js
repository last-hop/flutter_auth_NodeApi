const express = require('express');
const router = express.Router();

const data = require('../dummyData/data')

router.get('/tasks',(req,res) =>{
    res.json(data.tasks);
});


module.exports = router;