function backup --argument filename -d "Creates a copy of file as file.bak"
    cp $filename $filename.bak
end