function getP(){
    document.getElementById("body").style.cursor = "progress";
    var target = "getServlet";
    var ajaxRequest;
    if (window.XMLHttpRequest){
        ajaxRequest=new XMLHttpRequest(); // IE7+, Firefox, Chrome, Opera, Safari
    } else {
        ajaxRequest=new ActiveXObject("Microsoft.XMLHTTP"); // IE6, IE5
    }
    ajaxRequest.onreadystatechange = function(){
        if (ajaxRequest.readyState==4 && ajaxRequest.status==200){
            document.getElementById("examenesView").innerHTML=ajaxRequest.responseText;
            document.getElementById("body").style.cursor = "context-menu";
        }
    }
    ajaxRequest.open("POST", target, true);
    ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajaxRequest.send();
}
