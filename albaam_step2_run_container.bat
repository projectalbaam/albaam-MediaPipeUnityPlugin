Rem Run with `Packages` directory mounted to the container
Rem Specify `--cpus` and `--memory` options according to your machine.
docker run --cpus=16 --memory=32g ^
    --mount type=bind,src=%CD%\Packages,dst=/home/mediapipe/Packages ^
    --mount type=bind,src=%CD%\Assets,dst=/home/mediapipe/Assets ^
    -it mediapipe_unity:linux


REM python build.py build --bazel_build_opts "--experimental_scale_timeouts=10.0 --http_timeout_scaling=10.0" --android arm64 --android_ndk_api_level 21 --linkopt=-s -vv