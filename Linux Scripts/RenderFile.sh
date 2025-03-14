#This need to be reviewd
#Find a good approach for this method

#Here we move the INPUT file from wherever it is to the ./Input folder
#Use this script in case you have your file stored somewhere else on your machine OUTSIDE the root folder (./path/to/BlenderDocker)
#Hell even if you want to move from a folder inside it as well
#read -p Is the File, ZIPPED'(.zip)'? result
#if test "$result" = "Yes" || test "$result" = "Y"; then
#    DECOMPRESS=true
#fi
#read -p "Enter the path to the blend file: " input
#echo "Filepath - "$input

#if [ $DECOMPRESS ]; then
#    echo "Unzipping File"
#    mkdir "../input/UnzippedFile"
#else
#    echo "Unzipping disabled"
#fi

#read -p "Enter the path to the blend file: " input
#echo "Filepath - "$input

#Refactor needed, maybe a C# application is better than a shell sript

#docker compose run render "/usr/local/blender/blender "-noaudio" "--background" "${.}/${render_input_file}"