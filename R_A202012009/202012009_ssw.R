# 데이터 불러오기
students <- read.csv("StudentsPerformance.csv", header = TRUE)
head(students)
str(students)

# 실제 데이터에 맞는 레벨을 사용 / 부모님의 교육 수준을 순서형 변수로 변환
students$parental.level.of.education <- as.numeric(factor(students$parental.level.of.education, levels = c("some high school", "high school", "some college", "associate's degree", "bachelor's degree", "master's degree")))
students$parental.level.of.education

# 점심 유형: 이진 변수로 변환 ('standard' = 1, 'free/reduced' = 0)
students$lunch <- ifelse(students$lunch == "standard", 1, 0)
students$lunch 
# 시험 준비 과정: 이진 변수로 변환 ('none' = 0, 'completed' = 1)
students$test.preparation.course <- ifelse(students$test.preparation.course == "none", 0, 1)
students$test.preparation.course

# 변환된 데이터셋에서 수학 성적, 부모님의 교육 수준, 점심 유형, 시험 준비 과정만 선택
students_n <- students[, 3:6]
head(students_n)

# 상관 분석
students_cor <- cor(students_n) 
students_cor

# corrplot 패키지 설치 및 불러오기
#install.packages("corrplot")
library(corrplot)

# 상관 분석 결과 시각화
corrplot(students_cor, method="circle", type="upper", addCoef.col = "white")
