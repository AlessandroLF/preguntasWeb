
document.querySelectorAll(".dropzoneInput").forEach(inputElement =>{
    
    const dze = inputElement.closest(".dropzone");
    
    dze.addEventListener('dragover', e => {
        e.preventDefault();
        e.dataTransfer.dropEffect = "Subir";
    });

    dze.addEventListener('drop', e => {
        e.preventDefault();
        inputElement.files = e.dataTransfer.files;
        var reader = new FileReader();
    
        reader.onload = function(e) {
          document.getElementById("imgPreview").src = e.target.result;
        };

        reader.readAsDataURL(e.dataTransfer.files[0]);
        });
});

function print(text){
    console.log(text);
}

function preview(input){
    if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function(e) {
      document.getElementById("imgPreview").src = e.target.result;
    };
    
    reader.readAsDataURL(input.files[0]);
  }
}

var spell;

function saveSpell(element){
    spell = element.value;
}

function checkSpell(element){
    if(element.value.length > spell.length){
        if(isNaN(element.value.charAt(element.value.length-1))){
            element.value = spell + element.value.charAt(element.value.length-1).toUpperCase();
        }
        var s = spell.split("-");
        if(s.length == 2){
            if(isNaN(element.value.charAt(element.value.length-1))){
                if(element.value.charAt(element.value.length-1) != 'F'){
                    element.value = spell;
                }else{
                    element.value = element.value + "-";
                }
            }else{
                element.value = element.value + "-";
            }
        }
        if(s.length == 3){
            switch(element.value.charAt(element.value.length-1)){
                case 'P':
                    element.value = element.value + "RIMAVERA-";
                    break;
                case 'O':
                    element.value = element.value + "TONO-";
                    break;
                default:
                    element.value = spell;
            }
        }
        if(s.length == 4){
            if(isNaN(element.value.charAt(element.value.length-1))){
                if(element.value.charAt(element.value.length-1) != '-')
                    element.value = spell;
            }
        }
        if(s.length == 5 && element.value.charAt(element.value.length-2) != '-'){
            element.value = spell;
        }
        if(s.length > 5)
            element.value = spell;
    }
}

