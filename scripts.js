    $(document).ready(function(){

        $('#input li').click(function(){

            $('#input li ').removeClass("active1");
            $(this).addClass("active1");
        })

        $('#iframe li').click(function(){

            $('#iframe li ').removeClass("active2");
            $(this).addClass("active2");
        })



        $('#change').click(function(){


            var html1= $(".active1").html();
            var id1= $(".active1").attr("id");

            var html2= $(".active2").html();
            var id2=$(".active2").attr("id");
            /* change the right side */

            $('#iframe li ').removeClass("active2");

            $("#"+"t"+html1).addClass("active2");
            /* change the left side */
            id2=id2.replace("t","");

            $('#input li ').removeClass("active1");
            $("#"+id2).addClass("active1");
    })
    /* delete text */

    $('#deltex').click(function(){

        $("#texare").val("");


    })

    /* count letters */

    $('#texare').keyup(function(){
        var count= $(this).val().length;
        $("#strcount").html(count + "/200");
    })
    $('#butaut').click(function(){
        $("#othlan1").toggleClass("hidden");

        $("#med1").toggleClass("hidden");
        $("#foo1").toggleClass("hidden");
    })

    $('#butaut1').click(function(){
        $("#othlan2").toggleClass("hidden");

        $("#med2").toggleClass("hidden");
        $("#foo2").toggleClass("hidden");
    })
    /* change the 3rd list item by clicking glyphicon*/


    $('#othlan1 ul li').click(function(){
        $('#input li ').removeClass("active1");
        var oth1= $(this).html();
        $("*[data=3]").html(oth1);
        var pos3= $("*[data=3]").html();
        $(this).html(pos3);
        $("#othlan1").toggleClass("hidden");
        $("#med1").toggleClass("hidden");
        $("#foo1").toggleClass("hidden");
        $("*[data=3]").addClass("active1");




    })
    /* change the 3rd list item by clicking glyphicon*/

    $('#othlan2 ul li').click(function(){
        $('#iframe li ').removeClass("active2");
        var oth2= $(this).html();
        $("*[data=t3]").html(oth2);
        var pos3= $("*[data=t3]").html();
        $(this).html(pos3);
        $("#othlan2").toggleClass("hidden");
        $("#med2").toggleClass("hidden");
        $("#foo2").toggleClass("hidden");
        $("*[data=t3]").addClass("active2");
    })




    function ajaxfun(){


    var active1= $(".active1").html();
    var active2= $(".active2").html();
    var texare= $("#texare").val(); 

            $.ajax({
            url: "google.php" ,
            type: "POST",
              data:{ 
                  active1:active1,
                active2:active2,
                texare:texare
              },
                dataType:'json',
          success:function(result){
                $("#divtra").html(result.trans + " " + result.issuc);
              var new_words= Array.from(new Set(result.sugges));
                $("#sugword").html(new_words);
              $("#sulangs").html(result.suggestion);
        }

        })
    }

        $("#input, #othlan1 li").click(function(){
            ajaxfun();
        })

        $("#texare").keyup(function(){
            ajaxfun();
        })
    function selectText(node){
        node= document.querySelector(node);
        if(document.body.createRange){
            const range= document.body.createRange();
            range.moveToElementText(node);
            range.select();
            document.execCommand('copy');

            }
        else if(window.getSelection){
            const selection = window.getSelection();
            const range= document.createRange();
            range.selectNodeContents(node);
            selection.removeAllRanges();
            selection.addRange(range);
            document.execCommand('copy');
        }
    }
        const clickable= document.querySelector("#copy");
        clickable.addEventListener("click",function(){
            selectText("#divtra");
        })



    })