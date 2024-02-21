<!doctype html>
<html>
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.112.5">

<meta charset="utf-8">
<title>แสดงรายละเอียดข้อมูล</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">
</head>

<body>

<h1>รายละเอียดสินค้า</h1>

<?php
include("connectdb.php"); //รวมโค้ดกัน

$sql = "SELECT * FROM `products` WHERE `p_id` ='{$_GET['id']}' ";
$rs = mysqli_query($conn, $sql);
$data = mysqli_fetch_array($rs);    
?>
<center>
<input type="button" value="back" onClick="history.back()">
<div class="col">
          <div class="card shadow-sm">
            <img src="images/<?=$data['p_id'];?>.<?=$data['p_img'];?>" height="400">
            <div class="card-body">
              <p class="card-text"><strong>ราคา <?=$data['p_price'];?> บาท</strong><br> 
              <?=$data['p_name'];?></br></p>
              <strong>รายละเอียด</strong><br>
				<?=$data['p_detail'];?>
              <div class="d-flex justify-content-between align-items-center">
                
              </div>
            </div>
          </div>
        </div>

</body>
</html>