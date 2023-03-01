<?php
function storeFile($file)
{
    $target_dir = dirname(__DIR__, 2) . "/DB/local/media/"; // specify the directory where the files should be stored

    foreach ($file["tmp_name"] as $key => $tmp_name) {

        // Get the file name and path
        $file_name = $file["name"][$key];
        $file_tmp = $file["tmp_name"][$key];
        $file_target = $target_dir . basename($file_name);

        // Check if image file is a actual image or fake image
        $check = getimagesize($file_tmp);
        if ($check === false) {
            throw new Exception("File is not an image.");
        }

        // Check if file already exists
        if (file_exists($file_target)) {
            throw new Exception("Sorry, file already exists.");
        }

        // Check file size 5mb
        if ($file["size"][$key] > 5000000) {
            throw new Exception("Sorry, your file is too large.");
        }

        // Allow certain file formats
        $allowed_extensions = array("jpg", "jpeg", "png", "gif");
        $extension = strtolower(pathinfo($file_target, PATHINFO_EXTENSION));
        if (!in_array($extension, $allowed_extensions)) {
            throw new Exception("Sorry, only JPG, JPEG, PNG & GIF files are allowed.");
        }
    }



} ?>