# itunes-music-store-analysis
This project analyzes the Apple iTunes Music Store dataset using SQL and Power BI to explore customer behavior, music popularity, and sales trends. The analysis identifies top customers, popular artists and genres, and revenue patterns across different countries to support data-driven business decisions.
# Apple iTunes Music Store Analysis

## Project Overview
The Apple iTunes Music Store Analysis project focuses on analyzing a digital music store dataset using SQL queries and data visualization tools. The goal of this project is to extract useful business insights about customer purchasing behavior, music popularity, and sales performance.

The dataset represents a relational database structure of a music store where customers purchase music tracks from different artists and genres. By analyzing this dataset, we can understand how customers interact with the music store and identify key trends in music sales.

## Tools and Technologies
This project was completed using the following tools and technologies:

- SQL (SQLite)
- Python
- Google Colab
- Pandas
- Power BI
- GitHub

## Dataset Description
The dataset consists of several tables representing different parts of the music store database:

- Customer – information about customers
- Employee – store employees and support representatives
- Invoice – purchase transactions
- Invoice Line – individual tracks purchased in each invoice
- Track – details about songs
- Album – albums containing tracks
- Artist – artists who created the albums
- Genre – music genre categories
- Media Type – format of the music file
- Playlist – playlists created in the store
- Playlist Track – tracks included in playlists

These tables are connected through primary and foreign key relationships.

## Business Questions Solved
The project answers several important business questions, including:

- Who is the senior most employee in the company?
- Which countries generate the highest number of invoices?
- Which city generates the highest revenue?
- Who is the best customer based on total spending?
- Which artists and tracks generate the highest revenue?
- What are the most popular music genres among customers?

## Data Analysis Process
The analysis process involved several steps:

1. Importing the CSV dataset files into a relational database environment.
2. Creating relationships between tables using keys.
3. Writing SQL queries to analyze customer behavior and sales trends.
4. Aggregating data to calculate revenue and purchase frequency.
5. Identifying patterns in music popularity and geographic sales distribution.

## Dashboard Visualization
A Power BI dashboard was created to visualize the key insights from the analysis. The dashboard includes charts such as:

- Revenue by Country
- Top Customers
- Top Artists
- Genre Popularity

These visualizations help understand the results more clearly and make the analysis easier to interpret.

## Conclusion
The analysis of the Apple iTunes music store dataset revealed important insights about customer spending patterns, music preferences, and geographic revenue distribution. These insights can help businesses improve marketing strategies, enhance customer engagement, and identify potential opportunities for growth.

This project demonstrates the practical use of SQL for business analytics and highlights the importance of data-driven decision making.
