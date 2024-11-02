This script generates two visualizations of U.S. state capital control over time using the `ggplot2` package in R. Here's a breakdown of what each section does, with suggested content for a README:

---
# State Capital Control Visualization

This R script visualizes control of U.S. state capitals across different years, showing shifts between Democratic, Mixed, and Republican control. Using the `ggplot2` library, it creates a stacked bar plot and a faceted bar plot for a comprehensive view.

## Prerequisites

Ensure that the following R packages are installed:

```r
install.packages("ggplot2")
install.packages("here")
```

## Data Description

- **Years**: The time range is from 1938 to 2010, with data recorded every two years.
- **Conditions**: Three categories represent the political control in state capitals: `Democratic`, `Mixed`, and `Republican`.
- **Values**: Number of states under each type of control for each year.

## Code Description

1. **Data Preparation**:
   - Sets up the years from 1938 to 2010 in 2-year intervals.
   - Categorizes state capital control into Democratic, Mixed, and Republican for each year.
   - Creates a data frame `data` that includes columns `rep_year` (year), `condition` (control type), and `value` (number of states).

2. **Visualizations**:
   - **Stacked Bar Plot**: Visualizes changes in state capital control over time in a single plot.
   - **Faceted Bar Plot**: Separates each control type into its own facet for comparison across years.

## Running the Code

To generate the visualizations, run the script in an R environment:

```r
# Load required libraries
library(ggplot2)
library(here)

# Set up and create data, then run each ggplot command for visualization
# (See full code for details)
```

## Visualization Details

- **Stacked Bar Plot**: Presents the total number of states under each control type per year, stacking by condition. This plot provides a quick overview of political control shifts over time.
- **Faceted Bar Plot**: Shows each control type in separate facets, enabling comparison across years.

## License

This project is licensed under the MIT License. See `LICENSE` for details.

---

This README should guide others on the requirements, data, and steps to run your visualizations. Let me know if you need more customization!
