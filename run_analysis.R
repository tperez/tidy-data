

test <- read.table('test/X_test.txt')

n <- read.table('features.txt')
names(test) <- n$V2

s  <- read.table('test/subject_test.txt')
test$SubjectId = s$V1

a <- read.table('test/y_test.txt')
activityLabels <- read.table('activity_labels.txt')
acts <- merge(a, activityLabels, by="V1")
test$Activity = acts$V2


train <- read.table('train/X_train.txt')

n <- read.table('features.txt')
names(train) <- n$V2

s  <- read.table('train/subject_train.txt')
train$SubjectId = s$V1

a <- read.table('train/y_train.txt')
activityLabels <- read.table('activity_labels.txt')
acts <- merge(a, activityLabels, by="V1")
train$Activity = acts$V2


all <- rbind(test, train)

allSubset <- all[,c(562:563, 121:126, 161:166, 201:202, 214:215, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552, 555:561)]

library(reshape2)
library(plyr)

m <- melt(allSubset, id=c("SubjectId", "Activity"))
tidyData <- ddply(mm, .(SubjectId, Activity, variable), summarize, Mean=mean(value))

colnames(tidyData)[3] <- "Measurement"

write.table(tidyData, 'tidy-data.txt', sep='\t')




