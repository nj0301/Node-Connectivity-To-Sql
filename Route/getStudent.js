const express = require('express');
const router = express.Router();
const student = require('../Controllers/student');

router.get('/getStudent', student.getren);

router.post('/getStudent', student.getpost);

module.exports = router;