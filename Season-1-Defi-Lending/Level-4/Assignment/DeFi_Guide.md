# Collateralized Borrowing and Liquidation
Oracles play a critical role in enabling collateralized borrowing and liquidation of ERC-20 tokens within DeFi protocols. By providing reliable price feeds, oracles act as the trusted source of information that triggers liquidations and ensures the smooth functioning of lending markets. 

Here's a great set of resources to get you started

[Understanding Oracles in DeFi](https://www.investopedia.com/chainlink-link-definition-5217559)
[Best Practices for Choosing Oracles in DeFi Protocols](https://docs.chain.link/getting-started/conceptual-overview)


## Collateralized Borrowing and Liquidation Workflow:

- User deposits ERC-20 tokens (collateral) into a lending pool.
- User borrows against their collateral up to a specific LTV ratio.
- Oracle continuously reads the market price of the borrowed and collateral tokens.
- Liquidation threshold is calculated based on LTV and oracle price feeds.
- If the value of the user's collateral falls below the liquidation threshold:
- Oracle reports the price trigger.
- Smart contract automatically liquidates a portion of the collateral.
- Liquidated tokens are used to repay the loan plus interest and liquidation fees.
- Remaining collateral is returned to the user.

## Oracles in Action

- Price Accuracy: Reliable and accurate price feeds from oracles are crucial to prevent premature or delayed liquidations, protecting both borrowers and lenders.
- Decentralization: Decentralized oracles like Chainlink mitigate risks associated with single points of failure, enhancing protocol trust and security.
- Frequency and Timing: Price feeds need to be updated frequently with minimal latency to capture sudden price fluctuations and trigger timely liquidations.

## Understanding the Risks:

- Oracle Manipulation: Malicious actors might attempt to manipulate oracle feeds to trigger unfair liquidations or exploit vulnerabilities. Choosing decentralized oracles with strong security measures is crucial.
- Price Discrepancies: Differences in price feeds across different oracles can lead to discrepancies in liquidation triggers, requiring careful selection and aggregation methodologies.
- Smart Contract Bugs: Exploits in the smart contract governing the lending protocol can lead to unintended liquidations or loss of funds. Thorough code audits and security best practices are essential.

[Mitigating Oracle Risks in DeFi Liquidations](https://medium.com/beaver-smartcontract-security/defi-security-lecture-2-flash-loan-attacks-4aee2d3f07ca)

Written Guide Resources:

A Deep Dive into DeFi Liquidations: https://medium.com/dragonfly-research/liquidators-the-secret-whales-helping-defi-function-acf132fbea5e
Understanding Oracles in DeFi: https://www.investopedia.com/chainlink-link-definition-5217559

Remember, thorough research and careful consideration of risks are essential before engaging in any DeFi activities involving collateralized borrowing and liquidation. By understanding the role of oracles and choosing reliable protocols with robust security measures, you can navigate the DeFi landscape with confidence.


[<img alt="start here" width="250px" src="../../images/syntax.png" />](./Syntax.md)
