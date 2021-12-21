const connection = require('../Models/db'); 

exports.delren = (req,res) => {
    res.render('c');
  }

exports.delpost = (req,res)=>{
    let v1 = String(req.body.v1);
    connection.query(`DELETE FROM student WHERE  id="${v1}"`,(err,rows,fields)=>{
        if(!err)
        res.render('displayc')
        else
        console.log(err);
    })
  }

exports.getren = (req,res) => {
    res.render('a');
  }

exports.getpost = (req,res) => {
    let v1= Number(req.body.v1);
    connection.query(`SELECT student.Name,student.ID,student.Phone,
    student.Gender,department.Name as DeptName,courses.Name as CourseName,
    teacher.Name as TeacherName,sports.Name as SportsName FROM student
    JOIN mapping_st_sports ON student.ID=mapping_st_sports.StudentID 
    JOIN sports ON mapping_st_sports.SportsId=sports.SportsID 
    JOIN mapping_st_cr ON mapping_st_cr.StudentID=student.ID 
    JOIN courses ON mapping_st_cr.CourseID=courses.CourseID 
    JOIN mapping_st_dept ON student.ID=mapping_st_dept.StudentID
    JOIN department ON mapping_st_dept.DeptID=department.DeptID
    JOIN mapping_tr_cr ON mapping_tr_cr.CourseID=courses.CourseID
    JOIN teacher ON teacher.ID=mapping_tr_cr.TeacherID
    WHERE student.ID="${v1}";`,(err,rows,fields)=>{
        if(!err)
        res.render("displaya",{rows:rows});
        else
        console.log(err);
   
    })

}

exports.index =  (req,res) => {
    res.render('index');
}

exports.insertren = (req,res) => {
    res.render('b');
  }

exports.insertpost =  (req,res)=>{
    let v1 = String(req.body.v1);
    let v2 = Number(req.body.v2);
    let v3 = Number(req.body.v3);
    let v4 = String(req.body.v4);
    connection.query(`INSERT INTO student VALUES ('${v1}',${v2},${v3},'${v4}')`,(err,rows,fields)=>{
        if(!err)
        res.render('displayb')
        else
        console.log(err);
    })
  }