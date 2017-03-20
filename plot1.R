
#Criteria

##Was a valid GitHub URL containing a git repository submitted?
#Does the GitHub repository contain at least one commit beyond the original fork?
#Please examine the plot files in the GitHub repository. Do the plot files appear to be of the correct graphics file format?
#Does each plot appear correct?
#Does each set of R code appear to create the reference plot?

#Reviewing the Assignments

#Keep in mind this course is about exploratory graphs, understanding the data, and 
#developing strategies. Here's a good quote from a swirl lesson about exploratory graphs: 
#"They help us find patterns in data and understand its properties. They suggest modeling 
#strategies and help to debug analyses. We DON'T use exploratory graphs to communicate results."

#To that end, keep the following things in mind:

#DO
#Review the source code.
#Keep an open mind and focus on the positive.≤/li>
#When in doubt, err on the side of giving too many points, rather than giving too few.
#Ask yourself if a plot might answer a question for the person who created it.
#Remember that not everyone has the same statistical background and knowledge.
#DON'T:
#Deduct just because you disagree with someone's statistical methods.
#Deduct just because you disagree with someone's plotting methods.
#Deduct based on aesthetics.
#Loading the dataless 
#When loading the dataset into R, please consider the following:

#The dataset has 2,075,259 rows and 9 columns. 
#First calculate a rough estimate of how much memory the dataset will require 
#in memory before reading into R. Make sure your computer has enough memory 
#(most modern computers should be fine).
#We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative 
#is to read the data from just those dates rather than reading in the entire dataset and 
#subsetting to those dates.

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot
dev.copy(png,file = "~/Documents/Data Science/plot1.png", height = 480, width = 480)
hist(as.numeric(subData$Global_active_power), main = "Global Active Power", 
     col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
