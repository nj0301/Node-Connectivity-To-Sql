const express = require('express');
const router = express.Router();
const student = require('../Controllers/student');

router.get('/deleteStudent', student.delren);
  
router.post('/deleteStudent', student.delpost);

  module.exports = router;