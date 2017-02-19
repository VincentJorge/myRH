$(document).ready(function(){
    $("#select").click(function(){
        var selectASK = prompt('Quel est votre question ?');
        if (selectASK != '') {
            var selectOption = prompt('Combien options le select a besoin ? (un int)');
            if (selectOption != '' && !isNaN(selectOption)) {
                $("#questionnaire").append("<p>"+selectASK+"<br><select name='select' id='select'></select></p>");
                for (var i = 0; i < selectOption; i++) {
                    var optionSelect = prompt("Nom de l'option ?")
                    $('#select').append("<option value="+optionSelect+">"+optionSelect+"</option>");
                }
            }
            else {
                alert('Merci de saisir un int');
                return false;
            }
        }
        else {
            alert('Merci de saisir une question.');
            return false;
        }
    });
    $("#textarea").click(function(){
        var textareaASK = prompt('Quel est votre question ?');
        if (textareaASK != '') {
            $("#questionnaire").append("<p>"+textareaASK+"<br><textarea name='textarea' id='textarea'></textarea></p>");
        }
        else {
            alert('Merci de saisir une question.');
            return false;
        }
    });
    $("#radio").click(function(){
        var radioASK = prompt('Quel est votre question ?');
        if (radioASK != '') {
            var radioOption = prompt('Combien de radioBouton ? (un int)');
            if (radioOption != '' && !isNaN(radioOption)) {
                for (var i = 0; i < radioOption; i++) {
                    var optionSelect = prompt("Nom de l'option ?")
                    $("#questionnaire").append("<p>"+radioASK+"<br><input type='radio' name='radio' value='mdr'><br></p>");
                }


            }
        }
        else {
            alert('Merci de saisir une question.')
        }
    });
    $("#checkbox").click(function(){
        var checkboxASK = prompt('Quel est votre question ?');
        if (checkboxASK != '') {
            var nbrCheckbox = prompt('Combien de checkbox ?')
            $("#questionnaire").append("<p>"+checkboxASK+"<br><label id='checkbox'></label</p>");
            for (var i = 0; i < nbrCheckbox; i++) {

                $("#checkbox").append("<input type='checkbox' value='checkbox1'>");
            }

        }
    });
    $("#input").click(function(){
        var inputASK = prompt('Quel est votre question ?');
        if (inputASK != '') {
            $("#questionnaire").append("<p>"+inputASK+"<br><input type='text' name='text'><br></p>");
        }
    });
});