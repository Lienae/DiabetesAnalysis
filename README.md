# 당뇨병 예측 모델 (Diabetes Prediction Model)

## 프로젝트 개요
이 프로젝트는 당뇨병 환자를 예측하기 위한 로지스틱 회귀 모델을 개발하는 것입니다. 주어진 데이터셋을 기반으로 모델을 학습하고, 새로운 데이터에 대해 당뇨병 발생 여부를 예측합니다.

## 데이터셋
- **diabetes.csv**: 당뇨병 관련 변수들로 이루어진 데이터셋입니다. 각 변수는 당뇨병의 발생 여부(Outcome)에 영향을 미칠 수 있는 특징들을 포함하고 있습니다.

## 기술 스택
- R
- RStudio

## 설치 방법

1. **R 및 RStudio 설치**
   - [R](https://cran.r-project.org/)와 [RStudio](https://www.rstudio.com/products/rstudio/download/)를 설치합니다.

2. **데이터셋 다운로드**
   - [diabetes.csv](link_to_your_dataset) 파일을 프로젝트 디렉토리에 저장합니다.

## 코드 설명

1. **데이터셋 불러오기**
   ```R
   diabetes_data <- read.csv("diabetes.csv", header = TRUE)
