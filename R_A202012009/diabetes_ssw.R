# 데이터셋 불러오기
diabetes_data <- read.csv("diabetes.csv", header = TRUE)

# 데이터셋의 앞부분 확인
head(diabetes_data)

# 로지스틱 회귀 모델 생성
logistic_model <- glm(Outcome ~ ., data = diabetes_data)
logistic_model 

# 새로운 데이터 생성
new_data <- data.frame(rbind(c(2, 123, 50, 0, 0, 32.6, 0.123, 22)))  # 예시 데이터
new_data

# 변수 이름 부여
names(new_data) <- names(diabetes_data)[1:8]
new_data


# 새로운 데이터에 대한 예측 수행
pred <- predict(logistic_model, new_data)

# 예측 결과 출력
pred

# 예측 결과를 0 또는 1로 반올림
predicted_outcome <- round(pred, 0)

# 예측 결과를 새로운 데이터에 추가
new_data$Outcome <- predicted_outcome

# 최종 예측 결과 확인
new_data

head(diabetes_data)

