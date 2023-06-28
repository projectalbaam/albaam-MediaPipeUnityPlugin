Rem Run with `Packages` directory mounted to the container
Rem Specify `--cpus` and `--memory` options according to your machine.
docker run --cpus=16 --memory=16g ^
    --mount type=bind,src=%CD%\Packages,dst=/home/mediapipe/Packages ^
    --mount type=bind,src=%CD%\Assets,dst=/home/mediapipe/Assets ^
    -it mediapipe_unity:linux