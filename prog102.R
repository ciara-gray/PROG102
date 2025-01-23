library(marinecs100b)


# Writing a utility function ----------------------------------------------

# P1: How did you extract the temperature and exposure from the hottest day?
# Copy-paste the code here.
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
                      kefj_datetime >= hotday_start &
                      kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# P2: Fill in the blanks below to write the Alaskan datetime utility function.
convert_time <- function(date) {
  result <- as.POSIXct(date, tz = "Etc/GMT+8")
  return(result)
}

convert_time("2018-07-03 13:00")

max(1:10)
my_max <- function(x) {
  result <- max(x)
  return(result)
}
my_max(1:10)


# Extracting data ---------------------------------------------------------

# P3: Make a copy of your code from P1 and edit it to plot the temperature and
# exposure for "Aialik" on 2012-06-01
#hottest_idx <- which.max(kefj_temperature)
#hottest_time <- kefj_datetime[hottest_idx]
#hottest_site <- kefj_site[hottest_idx]
day_start <- as.POSIXct("2012-06-01 00:00", tz = "Etc/GMT+8")
day_end <- as.POSIXct("2012-06-01 23:59", tz = "Etc/GMT+8")
day_idx <- which(kefj_site == "Aialik" &
                      kefj_datetime >= day_start &
                      kefj_datetime <= day_end)
day_datetime <- kefj_datetime[day_idx]
day_temperature <- kefj_temperature[day_idx]
day_exposure <- kefj_exposure[day_idx]
plot_kefj(day_datetime, day_temperature, day_exposure)

# P4: Make a copy of your code from P3 and edit it to plot the temperature and
# exposure for "Harris" on 2016-04-05.
harris_day_start <- as.POSIXct("2016-04-05 00:00", tz = "Etc/GMT+8")
harris_day_end <- as.POSIXct("2016-04-05 23:59", tz = "Etc/GMT+8")
harris_day_idx <- which(kefj_site == "Harris" &
                   kefj_datetime >= harris_day_start &
                   kefj_datetime <= harris_day_end)
harris_day_datetime <- kefj_datetime[harris_day_idx]
harris_day_temperature <- kefj_temperature[harris_day_idx]
harris_day_exposure <- kefj_exposure[harris_day_idx]
plot_kefj(harris_day_datetime, harris_day_temperature, harris_day_exposure)

# P5: Compare your solutions for P3 and P4 - what variables changed?

# I changed day_start, day_end, day_idx, day_datetime, day_temperature,
# day_exposure, also changed "date" and "site" to the requested inputs.


# P6: What you would pick for the temperature extraction function and
# parameters' names?

# extract_temp <- function(???) {
#   result <- ???()
#  return(result)
#}

# Writing extraction functions --------------------------------------------

# P7: Fill in the blanks in the code below to write your temperature extraction
# function.
extract_temp <- plot_kefj(day_datetime, day_temperature, day_exposure) {
  ??? <- your_utility_function_name_here(???)
  ??? <- your_utility_function_name_here(???)
  ???
    return(???)
}

# P8: Make a copy of your solution to P7, and edit it to create exposure and
# datetime extraction functions.

# P9: Export your annotated screenshot as a JPEG called "annotated_function.jpg"
# and add it to your copy of the module repository. (It should be in the same
# folder as this file.)

# P10: Visualize Nuka Pass on July 1, 2018.

# P11: Save a copy of the Nuka Pass plot as "nuka_pass_2018-07-01.png" in this
# repo

# P12: Compare the code you wrote to create the plot in this module to the code
# you wrote in PROG101. Qualitatively, how do they compare? Which one is easier
# to read and why?
