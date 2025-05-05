# Overview
Building an AI-Powered, Decentralized Credit Scoring System using raw transaction-level data from the Compound V2 protocol.

## Data
+ Each record corresponds to a wallet and includes actions such as deposit, borrow, repay, withdraw, and liquidation.

## Goal
+ To develop an ML Model that assigns a score between 0 and 100 to each wallet based on historical transaction behaviour.
+ Higher scores indicate reliable and responsible usage; lower scores reflect risky, bot-like, or exploitative behavior

# Expectations
1. End to End Modelling - Feature Engineering, definition of "good" and "bad" behaviour, choose and justify modelling approach etc.
2. Design a Credit Scoring System
3. No pretrained models, external datasets etc.

# Deliverables
1. Methodology Document - Explaining scoring logic and rationale
2. Code - A notebook that processes the data, extracts features and outputs score
3. A CSV file with the top 100 wallets
4. A 1-page document analying the 5 highest and lowest scoring wallets, explaining observed patters and justifying their scores.

# Evaluation Criteria
+ Clarity and originality of your methodology.
+ Quality and creativity in feature engineering.
+ Robustness, explainability, and consistency of your scoring model.
+ Insightfulness of the wallet behavior analysis.

# Basic Data Analysis of JSON File
+ The file contains arrays of transaction objects, likely grouped by action type (e.g., deposits, borrows).
+ Each transaction record typically includes:
    + `account`: The wallet address (`id`).
    + `amount`: The raw token amount.
    + `amountUSD`: The equivalent value in USD.
    + `asset`: The asset involved, with `id` (contract address) and `symbol` (e.g., ETH, USDC, DAI).
    + `hash`: The transaction hash.
    + `id`: A unique identifier for the transaction.
    + `timestamp`: UNIX epoch time.
+ Across the File, we can find:
    + Patterns of wallet behavior: frequency, volume, diversity of assets, types of actions, time intervals.
    + Potential anomalies: very large or very small transactions, repeated patterns, or unusual asset usage.