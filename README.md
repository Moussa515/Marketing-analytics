📊 Marketing Campaign Performance & Efficiency Analysis
An end-to-end SQL-based marketing performance analysis transforming granular campaign metrics into actionable insights regarding ad spend efficiency, engagement segmentation, geographic ROI, and channel performance.



📌 Project Overview
This project analyzes digital marketing campaign data (`Marketing_Dataset`) to evaluate key metrics across ad performance, spend efficiency, engagement levels, and regional yield. Using T-SQL analytical methods, this analysis pinpoints top-performing creative assets, cost bottlenecks, and optimal geographic allocations.



🛠️ Tools & SQL Concepts Used
Database Engine: SQL Server (T-SQL)
Analytical Techniques:
Common Table Expressions (`CTE`)
Window Functions (`DENSE_RANK() OVER (...)`)
Conditional Logic (`CASE` Statements)
Aggregate Functions (`SUM`, `AVG`, `COUNT`)
Grouping, Subqueries, & Sorting (`GROUP BY`, `HAVING`, `ORDER BY`)




❓ Key Business Questions Addressed
1. Cost & Spend Efficiency
Cost Tiers: How can we segment our ad spend into High, Medium, and Low cost categories to monitor budget allocation?
Return Efficiency Matrix: Which campaigns are burning budget with low returns (`high_cost/Low_return`), and which are highly scalable (`Low_cost/high_return`)?
2. Ad Engagement & Creative Performance
Creative Attractiveness: How do our ad creatives stack up based on engagement threshold benchmarks ($\ge 180$ clicks and $\ge 4200$ impressions)?
Device Dominance: Which user device yields the highest total impression volume for optimized targeting?
3. Geographic & Regional Yield
Top Spend Markets: What are the top country locations driving our highest cumulative ad spend?
High-ROAS Locations: Which regional markets generate a Return on Ad Spend (ROAS) above our overall campaign baseline average?
Market Success Density: Which geographic location holds the highest count of top-tier successful campaigns (`Good_Campaign = 1`)?
4. Campaign Recency & Revenue Drivers
Campaign Timeline: What is the operational timeframe (oldest to most recent launch dates) of our analyzed campaign dataset?
Top Revenue Creative: Which specific ad asset (`Ad_ID`) drives the highest overall aggregate sales revenue?




📈 Strategic Insights & Recommendations
Budget Reallocation: Shift capital away from `high_cost/Low_return` campaigns and reallocate spend toward locations delivering above-average ROAS.
Creative Optimization: Scale ad production that meets or exceeds `Attractive Ad` engagement benchmarks ($\ge 180$ clicks and $\ge 4200$ impressions).
Device Targeting: Optimize budget allocation toward primary impression-generating devices to maximize total audience reach.




💻 Appendix: Key SQL Techniques & Functions Used
The analysis was performed using T-SQL in SQL Server Management Studio (SSMS). Below is a summary of the core SQL operations utilized:
CTEs & Window Functions (`WITH`, `DENSE_RANK`): Used to isolate and rank top spend geographic locations without subquery clutter.
Conditional Logic (`CASE WHEN`): Applied to categorize campaign metrics dynamically into cost tiers (`High`, `Medium`, `Low`), return efficiency tiers (`High cost/Low return`, `Low cost/High return`), and engagement categories (`Attractive Ad`, `Average Ad`, `Low Ad appeal`).
Subqueries (`SELECT AVG(...)`): Used in `WHERE` clauses to filter regions generating Return on Ad Spend (ROAS) above the global average.
Aggregations & Grouping (`SUM`, `COUNT`, `AVG`, `GROUP BY`): Utilized across location, device, and ad levels to evaluate total impressions, sales performance, and campaign frequency.
Sorting & Query Scope Limits (`TOP`, `ORDER BY ASC/DESC`): Applied to identify extreme parameters such as campaign start/end dates, highest revenue ad, and dominant device channel.
