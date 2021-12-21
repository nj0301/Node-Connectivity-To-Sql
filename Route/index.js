const express = require('express');
const router = express.Router();
const student = require('../Controllers/student');

router.get('/', student.index);

module.exports = router;