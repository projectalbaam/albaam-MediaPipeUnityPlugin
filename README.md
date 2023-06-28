# 개요
- 알밤에서 사용할 mediapipe unity plugin 버전 픽스 시키기  
- 실제론 미디어 파이프 핵심 라이브러리 빌드용도  
- 각 플랫폼별로 빌드하면,  
-- 안드로이드 : *.aar  
-- iOS : *.dylib  
-- 윈도우 : *.dll  
등의 결과물이 나오는데 그것만 빼서 쓰고 나머지는 https://github.com/homuler/MediaPipeUnityPlugin에서 releases로 배포하는 *.unitypackage파일을 사용  


# 최종업데이트
## 2023.06.28
- MediaPipeUnityPlugin v0.12.0 사용  
- 안드로이드의 경우, playstore에 배포하려면 aab용량 문제가 있어 새로 빌드함  

### 개발환경
- 윈도우
-- 도커 리눅스컨테이너가 필요함

-- albaam_step1_build_image.bat
-- albaam_step2_run_container.bat
실행 후, 도커 컨테이너 쉘에 빌드 커맨드를 아래와 같이 입력

```sh
python build.py build --bazel_build_opts "--experimental_scale_timeouts=10.0 --http_timeout_scaling=10.0" --android arm64 --android_ndk_api_level 21 --linkopt=-s -vv
```

## 원본 Readme
README_original.md