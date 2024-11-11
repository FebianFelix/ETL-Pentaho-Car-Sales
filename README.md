# ETL-Pentaho-Car-Sales

This project uses ETL processes and OLAP to analyze car sales data, focusing on the impact of social media on customer interactions and sales for the fictional brand Dummy. Utilizing Pentaho, Schema Workbench, and Mondrian, this project enables comprehensive insights through data warehousing and multidimensional analysis.

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Technologies Used](#technologies-used)
- [Data Architecture](#data-architecture)
- [ETL Process](#etl-process)
- [Schema Design](#schema-design)
- [OLAP and Analysis](#olap-and-analysis)
- [Installation](#installation)
- [Usage](#usage)
- [Conclusion](#conclusion)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

This project aims to evaluate the influence of social media on car sales by implementing ETL processes with Pentaho, creating a star schema using Schema Workbench, and visualizing data in Mondrian. The goal is to offer insights into how social media platforms contribute to car sales, helping Dummy optimize marketing strategies.

## Dataset

The dataset consists of multiple tables representing various aspects of car sales and customer interactions, including:
- **Car Details**: Information on car models, categories, and availability.
- **Sales**: Records of sales transactions.
- **Promotions**: Details of promotional discounts.
- **Customers**: Customer demographics and engagement metrics.
- **Social Media**: Social media platform data, including which platforms influenced purchases.

## Technologies Used

- **Pentaho**: For ETL processes to extract, transform, and load data from various sources.
- **Schema Workbench**: For designing the star schema for OLAP analysis.
- **Mondrian**: OLAP engine for multidimensional data visualization and analysis.

## Data Architecture

### Star Schema Design
The star schema is used as the core data structure, comprising:
1. **Fact Table (fact_sales)**: Contains transaction data with foreign keys linking to dimension tables.
2. **Dimension Tables**:
   - **Branch Dimension**: Stores details of the Dummy branches.
   - **Customer Dimension**: Contains demographic details of customers.
   - **Employee Dimension**: Information about sales employees.
   - **Car Dimension**: Car model, category, and inventory data.
   - **Promotion Dimension**: Discounts and promotion codes.
   - **Social Media Dimension**: Details of social media platforms impacting sales.

## ETL Process

The ETL process in Pentaho consists of the following key steps:

1. **Extract**: Data is collected from various sources, including social media interactions and sales records.
2. **Transform**: Data is cleaned, encoded, and structured for analysis. Some key transformations include:
   - Merging car models with categories.
   - Removing irrelevant columns and handling outliers.
   - Normalizing demographic data for consistent analysis.
3. **Load**: The transformed data is loaded into dimension and fact tables to form the star schema.

## Schema Design

### Using Schema Workbench
Schema Workbench is used to define an XML schema for the star schema, which serves as a foundation for OLAP analysis in Mondrian. This schema structure supports multidimensional analysis, allowing Dummy to explore sales trends influenced by various dimensions, such as branch, car category, and social media platform.

## OLAP and Analysis

Mondrian OLAP allows for a deep dive into car sales data through multidimensional cubes. Key insights include:
1. **Total Sales by Platform**: Analyzes total sales generated from each social media platform.
2. **Impact of Social Media on Sales**: Quantifies the influence of Instagram, Twitter, and Facebook on Dummy car sales.
3. **Sales by Car Category**: Breaks down sales volume by different car categories and promotional effects.

### Visualizations
- **Total Sales**: A dashboard showing total sales for each social media platform.
- **Customer Influence**: Displays how many sales were influenced by each social media channel.
  
## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/FebianFelix/ETL-Pentaho-Car-Sales.git
   ```
2. Set up Pentaho and Schema Workbench following installation instructions in their documentation.
3. Load the schema into Mondrian for OLAP visualization.

## Usage

1. **Run ETL Jobs in Pentaho**: Execute ETL jobs to process data from raw sources to the star schema.
2. **Load Schema in Mondrian**: Use Mondrian to visualize the star schema and analyze car sales data.

## Conclusion

This ETL and OLAP project successfully demonstrates the impact of social media on car sales for Dummy, providing insights into customer behavior and engagement. By optimizing social media campaigns based on these insights, Dummy can improve sales and customer reach.

## Contributing

1. Fork the repository.
2. Create a branch for your feature (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
