function addP(){
    alert("ADD");
    alert(document.forms["addPF"]["pregunta"].value);
    alert(document.forms["addPF"]["depo"].value);
    alert(document.forms["addPF"]["materia"].value);
    alert(document.forms["addPF"]["parcial"].value);
    
    document.getElementById("body").style.cursor = "progress";
    var ajaxRequest;
    var target = "addServlet";
    if (window.XMLHttpsRequest){
        ajaxRequest=new XMLHttpsRequest(); // IE7+, Firefox, Chrome, Opera, Safari
    } else {
        ajaxRequest=new ActiveXObject("Microsoft.XMLHTTP"); // IE6, IE5
    }
    ajaxRequest.onreadystatechange = function(){
        if (ajaxRequest.readyState==4 && ajaxRequest.status==200){
            alert(ajaxRequest.responseText);
            document.getElementById("body").style.cursor = "context-menu";
            document.getElementById("console").innerHTML=ajaxRequest.responseText;
        }
    }
    ajaxRequest.open("POST", target, true);
    ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajaxRequest.send("pregunta=" + document.forms["addPF"]["pregunta"].value
            + "&depo=" + document.forms["addPF"]["depo"].value
            + "&materia=" + document.forms["addPF"]["materia"].value
            + "&parcial=" + document.forms["addPF"]["parcial"].value);
}

function getP(){
    alert("GET");
    document.getElementById("body").style.cursor = "progress";
    var ajaxRequest;
    var target = "getServlet";
    if (window.XMLHttpsRequest){
        ajaxRequest=new XMLHttpsRequest(); // IE7+, Firefox, Chrome, Opera, Safari
    } else {
        ajaxRequest=new ActiveXObject("Microsoft.XMLHTTP"); // IE6, IE5
    }
    ajaxRequest.onreadystatechange = function(){
        if (ajaxRequest.readyState==4 && ajaxRequest.status==200){
            alert(ajaxRequest.responseText);
            document.getElementById("body").style.cursor = "context-menu";
            document.getElementById("console").innerHTML=ajaxRequest.responseText;
        }
    }
    ajaxRequest.open("POST", target, true);
    ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajaxRequest.send("\param=" + document.forms["getPF"]["param"].value
            + "pregunta=" + document.forms["getPF"]["pregunta"].value
            + "&depo=" + document.forms["getPF"]["depo"].value
            + "&materia=" + document.forms["getPF"]["materia"].value
            + "&parcial=" + document.forms["getPF"]["parcial"].value);
}