##1.Which are the most frequent top 20 job postings in each category and how many openings are they offering

#load library ggplot
library(ggplot2)
# Read dataset
cd <- read.csv("CLEANED-DATASET.csv")

# Find the top 20 job postings for every type of employment
top20_job_postings <- cd[order(cd$X..Of.Positions, decreasing = TRUE), ]
top20_job_postings <- top20_job_postings[!duplicated(top20_job_postings$Job.Category), ]
top20_job_postings <- top20_job_postings[1:20, ]

# Create a bar plot
ggplot(top20_job_postings, aes(x = X..Of.Positions, y = Job.Category)) +
  geom_bar(stat = "identity", fill = "BLUE") +
  labs(title = "Top 20 Job Postings by Job Category",
       x = "Total Positions",
       y = "Job Category") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 8),  
        axis.title.y = element_text(size = 10), 
        plot.title = element_text(size = 13, face = "bold"))



##2.In what way do the distributions of job posting vary among the top 10 agencies?


# finding job openings for every agency
agency_counts <- table(cd$Agency)

# for top 10 agencies
top_agencies <- names(head(sort(agency_counts, decreasing = TRUE), 10))
top_agencies_data <- subset(cd, Agency %in% top_agencies)

# Create bar plot
ggplot(top_agencies_data, aes(y = reorder(Agency, -table(Agency)[Agency]), fill = Agency)) +
  geom_bar() +
  labs(title = "Top 10 Agencies Based on Job Postings",
       y = "Agency",
       x = "Number of Job Postings",
       fill = "Agency") +
  theme_minimal() +
  theme(axis.text.x = element_blank()) +  # Remove x-axis text
  coord_flip()


##3.What are the differences between each of the agencies' full- and part-time employment distributions?

#load dplyr
library(dplyr)
# Print col name
print(colnames(jobs_data))

# Create a bar plot 
ggplot(cd, aes(y = reorder(Agency, desc(Full.Time.Part.Time.indicator)), 
                      fill = Full.Time.Part.Time.indicator)) +
  geom_bar(position = "stack") +
  labs(title = "Part-Time / Full-Time distribution by Agency",
       y = "Agency",
       x = "Number of Positions",
       fill = "Employment Type") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 4, hjust = 0))

##4.Is there any noticeable relationship between the number of available positions at different companies and the corresponding ranges of wages they provide?


# Load  library
library(ggplot2)

# scatter plot to visualize the relationship between the number of job openings and salary range
ggplot(cd, aes(x = X..Of.Positions, y = Salary.Range.To)) +
  geom_point() +
  labs(title = "Relationship between # of Job Openings and Salary Range",
       x = "Number of Job Openings",
       y = "Salary Range To") +
  theme_minimal()












