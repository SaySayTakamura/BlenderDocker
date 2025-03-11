echo "Pulling example .blend files from BLENDER.ORG"

if [! -d "../Samples" ]; then
    echo "Samples directory does not exists, creating one"
    mkdir "../Samples"
    echo "Done!!"
    echo ""
    echo "Now pulling Sample files"
    echo "4.3 Splash Screen"
    (cd "../Samples" && exec curl -OL mirrors.ocf.barkeley.edu/blender/demo/splash/blender-4.3-splash.blend)
    
    echo "--4.2 Splash Screen--"
    echo "-Warning - ZIP File-"
    echo "Downloading File"
    (cd "../Samples" && exec curl -OL mirrors.ocf.barkeley.edu/blender/demo/splash/blender-4.2-splash.zip)
    echo "Moving file to its directory"
    mkdir "../Samples/Blender 4.2 Splash"
    (cd "../Samples" && mv blender-4.2-splash.zip "Blender 4.2 Splash")
    echo "Extracting zipped content"
    (cd "../Samples/Blender 4.2 Splash" && exec unzip blender-4.2-splash.zip)
    echo "Deleting ZIP file"
    (cd "../Samples/Blender 4.2 Splash" && rm -f blender-4.2-splash.zip)

    echo "4.1 Splash Screen"
    (cd "../Samples" && exec curl -OL mirrors.ocf.barkeley.edu/blender/demo/splash/blender-4.1-splash.blend)
    echo "4.0 Splash Screen"
    (cd "../Samples" && exec curl -OL mirrors.ocf.barkeley.edu/blender/demo/splash/blender-4.0-splash.blend)

    echo "--3.1 Splash Screen--"
    echo "-Warning - ZIP File-"
    echo "Downloading File"
    (cd "../Samples" && exec curl -OL mirrors.ocf.barkeley.edu/blender/demo/splash/blender-3.1-splash.zip)
    echo "Moving file to its directory"
    mkdir "../Samples/Blender 3.1 Splash"
    (cd "../Samples" && mv blender-3.1-splash.zip "Blender 3.1 Splash")
    echo "Extracting zipped content"
    (cd "../Samples/Blender 3.1 Splash" && exec unzip blender-3.1-splash.zip)
    echo "Deleting ZIP file"
    (cd "../Samples/Blender 3.1 Splash" && rm -f blender-3.1-splash.zip)
else

    if[! -f "../Samples/blender-4.3-splash.blend" ]; then
        echo "4.3 Splash Screen is Missing"
        echo "Downloading"
    else
        echo "4.3 Splash Screen is downloaded, nice!"
    fi
    if[! -d "../Samples/Blender 4.2 Splash" ]; then
        echo "4.2 Splash Screen is Missing"
        echo "Downloading"
    else
        echo "4.2 Splash Screen is downloaded, nice!"
    fi
    if[! -f "../Samples/blender-4.1-splash.blend" ]; then
        echo "4.1 Splash Screen is Missing"
        echo "Downloading"
    else
        echo "4.1 Splash Screen is downloaded, nice!"
    fi
    if[! -f "../Samples/blender-4.0-splash.blend" ]; then
        echo "4.0 Splash Screen is Missing"
        echo "Downloading"
    else
        echo "4.0 Splash Screen is downloaded, nice!"
    fi
    if[! -d "../Samples/Blender 3.1 Splash" ]; then
        echo "3.1 Splash Screen is Missing"
        echo "Downloading"
    else
        echo "3.1 Splash Screen is downloaded, nice!"
    fi
fi