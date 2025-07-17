# Manual Method (A_M)


function ManualAppend{

    $source = read-host "Enter the source "
    $destination = read-host "Enter the destination "
    $result = read-host "Would you like to append source file's content to destination ? (Y/N) "    

    #Check whether the user enetered source is a file

    if($result -eq "Y"){
    if(test-path -path $source -pathtype leaf){
        cat $source | add-content -path $destination 

    }elseif(test-path -path $source -pathtype container){
        foreach($item in ( $content = ls $source)){
            if(test-path -path $item -pathtype leaf){
                
                # This will go through all the files and subfolders within the specified source directory and append that to the destination file.
                get-childitem -path $item -file -recurse | foreach-object {
                    get-content -path $_.fullname | add-content -path $destination
                }

            }elseif(test-path -path $item -pathtype container){

                get-childitem -path $item -file -recurse | foreach-object {
                    get-content -path $_.fullname | add-content -path $destination
                }
            
            }else{
                write-host "No Any Files or Folders !"
            }      

        }}
    }else{
        write-host "User don't want to append, please come again !"
    }
}