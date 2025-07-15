# Manual Method to Automate (M_A)

function Automate-Copy{

    $source = read-host "Enter the source "
    $destination = read-host "Enter the destination "

    if(test-path -path $source -pathtype leaf){ #Check whether the source is a file
        cat $source | add-content -path $destination # Add the content of the source to destination
   
    }elseif(test-path -path $source -pathtype container){ #Check whether the source is a directory

        foreach($item in ( $C = ls $source)){
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
        }      
    }
}


