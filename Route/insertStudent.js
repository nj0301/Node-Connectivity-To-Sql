const express = require('express');
const router = express.Router();
const student = require('../Controllers/student');

router.get('/insertStudent', student.insertren)
  
router.post('/insertStudent', student.insertpost)
  
  module.exports = router;