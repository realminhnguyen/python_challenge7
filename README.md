# python_challenge7
Repository containing my work for UofM's FinTech Bootcamp. Module 7.

In this homework assignment, you will apply your new SQL skills to analyze historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions.
You are asked to accomplish three main tasks:

1. Data Modeling: Define a database model to store the credit card transactions data and create a new PostgreSQL database using your model.

2. Data Engineering: Create a database schema on PostgreSQL and populate your database from the CSV files provided.

3. Data Analysis: Analyze the data to identify possible fraudulent transactions trends data, and develop a report of your observations.

## Report to CFO
In response to the CFO, here is what I found.

Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
- Yes, there is evidence taht suggests that these credit cards have been hacked. If the criteria is "several small transactions (generally less than $2.00)," then several cardholders have been hacked. Many of them have small transaction counts of over 10, with the highest being 26.

Do you see any anomalous transactions that could be fraudulent?
- I see some signs of fraudlent activity. The most alarming thing I see is how the majority of the transactions are less than $200, then it jumps up to $700, peaking at around $1900.

Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
- No.

What are the top 5 merchants prone to being hacked using small transactions?
- Wood-Ramirez (7), Hood-Phillips (6), Baker Inc (6), Clark and Sons (5), and Greene-Wood (5).

What difference do you observe between the consumption patterns between id 2 and id 18? Does the difference suggest a fraudulent transaction?
- Individual spending habits can vary, but what I noticed was the big spikes in cardholder 18's graph. Cardholder 18 exhibits sporadic spikes in activity with larger transactions. The irregularity and the significant variations in transaction amounts may suggest less predictable spending behavior.
Cardholder 2 appears to have frequent small transactions. This could be indicative of regular, everyday spending on smaller items.
- More factors may be needed for analysis, such as problematic merchants or inconsistent spending locations.