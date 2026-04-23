#  AI Usage and Student Performance Analysis

##  Project Overview

This project analyzes how students use AI tools and examines whether AI usage has an impact on academic performance. The dataset includes information on student demographics, daily AI usage, and perceived effects on grades.

---

##  Objectives

* Explore patterns in AI tool usage among students
* Analyze the relationship between **age** and **daily AI usage**
* Investigate whether increased AI usage impacts student grades
* Compare usage behavior across different groups

---

##  Tools & Libraries

* R
* tidyverse
* dplyr
* ggplot2

---

##  Dataset

The dataset used is:
**AI_Student_Life_Pakistan_2026.csv**

It contains variables such as:

* Age
* Gender
* Daily_Usage_Hours
* AI_Tool_Used
* Education_Level
* Impact_on_Grades

---

##  Data Cleaning

* Checked for missing values → none found
* Checked for duplicate rows → none found
* Converted categorical variables into factors where needed

---

##  Analysis & Methods

### 1. Descriptive Statistics

* Average age ≈ 19.38
* Average daily AI usage ≈ 3.06 hours
* Gender distribution: ~48% male, ~52% female

---

### 2. Correlation Analysis

* Examined relationship between **Age** and **Daily Usage Hours**
* Result: weak negative correlation (-0.163)
* Interpretation: older students tend to use AI slightly less

---

### 3. AI Tool Usage Visualization

* Created bar charts to compare AI tools used across education levels
* Used grouped bar plots for better comparison

---

### 4. Usage Groups

* Divided students into quartiles based on usage:

  * Low
  * Mid-Low
  * Mid-High
  * High
* Analyzed how grade impact varies across these groups

---

### 5. T-Test Analysis

* Created a binary variable:

  * 1 = Grades Improved
  * 0 = No Change or Decline

* Conducted a t-test to compare:

  * **Daily Usage Hours between groups**

#### Hypotheses:

* H₀: No difference in average usage between groups
* H₁: There is a difference

---

### 6. Linear Regression

* Built a model to analyze:

  * Relationship between **Age** and **Daily Usage Hours**

* Used regression and visualization to identify trends

---

##  Key Findings

* AI usage varies across education levels and tools
* There is a weak negative relationship between age and AI usage
* Differences in usage may be associated with perceived grade impact
* No strong evidence suggests that higher usage always leads to better grades

---

##  Limitations

* Dataset size is relatively small
* Self-reported data may introduce bias
* “Impact on grades” is subjective

---

##  Conclusion

This analysis provides insight into how students interact with AI tools and highlights patterns in usage and academic outcomes. While AI usage is widespread, its direct impact on grades remains unclear and may depend on how effectively students use these tools.

---

