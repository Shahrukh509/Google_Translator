<?php
$con = mysqli_connect("localhost", "root", "", "translationpro");
mysqli_set_charset($con, "utf8");

$active1 = $_POST['active1'];
$active2 = $_POST['active2'];
$texare  = $_POST['texare'];
$result = ["trans" => array(), "issuc" => "", "sugges" => array(), "suggestion" => ""];
$issuccess= false;
$sp = '/ /';
$sow = preg_split($sp,$texare);
$wordsOfActive1= array();
 $sql= "SELECT  ".$active1."  AS active1  ,  ".$active2."  AS active2 FROM content";
$query= mysqli_query($con, $sql);
while($row=mysqli_fetch_array($query)){
    
    if(!empty($texare)){
        foreach($sow as $word){
        array_push($wordsOfActive1, $row["active1"]);
        foreach($wordsOfActive1 as $actwords){
            if(strpos($actwords,$word) != false){
            array_push($result["sugges"], "<li>".$actwords."</li>");
        }
        }
        
            
    if($row["active1"] == $word){
       array_push($result["trans"],$row["active2"]);
        $issuccess= true;
    }
}
}
}

$sql2= "SELECT * FROM content";
$query2= mysqli_query($con,$sql2);
while($row2= mysqli_fetch_array($query2)){
    $languages=["ENGLISH","URDU","ITALIAN","ARABIC","RUSSIAN","FRENCH","ESPAGNOL"];
       foreach($languages as $lang){
         if((preg_match("/{$row2[$lang]}/i", $texare)) && ($lang != $active1)){
         $result["suggestion"]= $lang;
                 
             }
             
            
        }
    }

    
if($issuccess==true){
    $result["issuc"] = "<span class='glyphicon glyphicon-ok-sign'></span>";
    $result["sugges"]= "";
}
 echo json_encode($result);

?>