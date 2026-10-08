# Week 1: Meet the Data
# Research Methods — Your first R script
#
# Instructions:
# 1. Work through the exercises on the course website first.
# 2. Copy your code into this file as you go.
# 3. When you're done, save this file, then commit and push
#    using GitHub Desktop.
#
# The data files are in the data/ folder of this repo — the same
# ones you used in the WebR exercises on the course site.


# --- Load the data -----------------------------------------------------------

elec <- read.csv("data/uk_electricity.csv")

# Check what we've got
head(elec)
names(elec)
nrow(elec)


# --- Exercise 1: Explore the data --------------------------------------------

# How many years of data? What fuel types are included?
# Try: str(elec) and summary(elec)
# Step 1. Show the first few rows of `elec`.
elec <- read.csv("data/uk_electricity.csv")
elec
head(elec)

# Step 2. Show the column names.
names(elec)

# Step 3. Print the number of years the data covers.
elec$year
nrow(elec)


# --- Exercise 2: Plot biomass over time --------------------------------------

# Plot bioenergy generation (TWh) against year.
# What's the trend?

# Step 1. Plot bioenergy generation (y) against year (x).
elec <- read.csv("data/uk_electricity.csv")
names(elec)
plot(y = elec$bioenergy_twh, x = elec$year, ylab = "Total Uk energy generation (twh)", xlab = "calendar year", main = "Total Uk energy generation against year")

# Step 2. Give the plot a title and label both axes, with units.

# --- Exercise 3: Add coal for comparison --------------------------------------

# Biomass went up — but is that a big change? Plot coal on the same axes.
# What story do the two trends tell together?
# Step 1. Plot bioenergy against year as a line, with axes labelled
#         and a y-range big enough for coal as well as biomass.

par(mfrow=c(1,1))
plot(y= elec$bioenergy, x=elec$year, type = "l", 
       ylim = c(0,250),
       ylab= "bioenergy (twh)", 
       xlab= "year",
     col="light blue")
lines(y= elec$coal_twh, x=elec$year, type = "l",
     ylab= "coal twh", 
       xlab= "year",
     col="light green")
# Step 2. Add coal to the same plot, in a different colour and style.


# Step 3. Add a legend naming the two series.
legend("topleft", legend = c("bioenergy", "coal"),
                 col = c("lightblue","lightgreen"), lty = c(1), lwd=2)


# --- Exercise 4: Summary statistics -------------------------------------------

# Calculate the mean and standard deviation of biomass generation
# for the last 5 years (2020–2024).



# --- Exercise 5: Is biomass a big deal? ---------------------------------------

# What percentage of total UK electricity came from bioenergy in 2024?
# Is that a big number? Compared to what?



# --- Your notes ---------------------------------------------------------------

# Write a few sentences about what you found today. What surprised you?
# What questions do you still have about biomass electricity?
#
#
#
