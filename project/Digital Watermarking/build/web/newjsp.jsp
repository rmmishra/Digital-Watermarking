<html>
    <head>
        <script type="text/javascript">



            function PreviewRecipeImage() {


                var file = document.getElementById('file').files[0]; // create img tag for selected recipe image file
                var img = document.createElement("img");
                img.id = "imgid";
                img.classList.add("obj");
                img.file = file;
//img.width = 90;
//img.height = 90;
//ClearThumb1Image();

                document.getElementById('imgThumbId').appendChild(img);// append img tag to recipe image tag

                var reader = new FileReader();
                reader.onload = (function (aImg) {
                    return function (e) {
                        aImg.src = e.target.result;
                    };
                })(img);
                reader.readAsDataURL(file);


            }
        </script>
    </head>
    <div class="file">
        <ul class="thumbnails">
            <li class="span4">
                <a href="#" class="thumbnail">
                    <div id="imgThumbId"></div>
                </a>
            </li>
        </ul>
        <form action="advertise.jsp">
            <fieldset>
                <legend>Upload Image</legend>
                <label for="file">Choose photo</label>
                <input type="file" name="file" id="file" /><br/>
                <input type="submit" name="upload" id="upload" value="Upload photo"  onclick="PreviewRecipeImage();"/>
            </fieldset>
        </form>
    </div>
</html>