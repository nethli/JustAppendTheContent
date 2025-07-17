function Main-Function{
    $runningmode = read-host "What Would you Like to Run the Automate or Manual Mode (A/M) ? "


if($runningmode -ne $null){
    switch($runningmode){
        "A" {Automate-Mode}
        "M" {Manual-Mode}
        default {write-host"No Mode Entered. Please exit !"}
    }
}
}

# Automate the Appending Process 
function Automate-Mode{
                write-host "Automate Mode is Running ... "

                $source = read-host "Enter the source "
                $destination = read-host "Enter the destination "

                if(test-path -path $source -pathtype leaf){ # Check whether the source is a file
                    cat $source | add-content -path $destination # Add the content of the source to destination

                }elseif(test-path -path $source -pathtype container){ # Check whether the source is a directory

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
                            write-host "No Any Files or Folders in Source Folder !"
                        }      
                    }      
                }
                
            write-host "Append Completed ... "    

            }



#Manual Append

function Manual-Mode{

    write-host "Manual Mode is Running ... "
    $result = read-host "Would you like to append source file's content to destination ? (Y/N) "        

    #Check whether the user enetered source is a file

    if($result -eq "Y"){
    
        $source = read-host "Enter the source "
        $destination = read-host "Enter the destination "
    
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
                write-host "No Any Files or Folders in Source Folder !"
            }      

        }
    }
    }else{
        write-host "User don't want to append, please come again !"
    }
    write-host "Append Completed ... "
}




        




