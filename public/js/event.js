    function createNewElement() {
        // First create a DIV element.
        var txtNewInputBox = document.createElement('div');
        // Then add the content (a new input box) of the element.
        txtNewInputBox.innerHTML = "<div class='form-inline' ><div class='form-group mb-2 ml-2'><input type='text' class='form-control mt-1' id='speakers' name='speakers[]' ></div><div class='form-group mb-2'><input type='file' class='form-control-file' id='speakerimage' name='speakerimage[]'></div></div>";

        // Finally put it where it is supposed to appear.
        document.getElementById("newElementId").appendChild(txtNewInputBox);
    }

    function createNewagenda() {
        var txtNewInputBox = document.createElement('div');
        // Then add the content (a new input box) of the element.
        txtNewInputBox.innerHTML = "<input type='text' class='form-control mt-1' id='agenda' name='agenda[]' >";

        // Finally put it where it is supposed to appear.
        document.getElementById("newagenda").appendChild(txtNewInputBox);
    }