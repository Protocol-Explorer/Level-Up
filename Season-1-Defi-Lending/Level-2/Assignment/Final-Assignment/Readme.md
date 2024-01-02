# Smart Contract Development: Level 2 - ERC20 Token Lending and Borrowing Contract

Welcome to Level 2 of your Smart Contract Development journey! Building on the foundational knowledge from Level 1, you're now stepping into the realm of ERC20 token lending, borrowing, and repayment contracts. This level challenges you to apply your Solidity skills to a more complex scenario, involving the handling of ERC20 tokens. Ready to elevate your blockchain development skills? Let's get started!

## Objective

Your mission in Level 2 is to create an ERC20 token lending, borrowing, and repayment contract on Ethereum. This contract will introduce you to the nuances of handling tokenized assets and lay the groundwork for advanced decentralized finance (DeFi) applications.

## The Essence of the ERC20 Lending Contract

The Basic ERC20 Lending Contract is designed to facilitate four key functionalities: depositing tokens, withdrawing tokens, borrowing tokens, and repaying tokens. This contract is a crucial step in understanding how smart contracts can manage complex interactions and financial transactions in a tokenized ecosystem. Here's a breakdown of each function:

1. **Depositing Tokens: The Initial Step**
   - **Functionality:** The `depositToken(uint256 amount)` function.
   - **How it Works:** Users call this function to deposit ERC20 tokens into the contract. The contract records the deposited amount in the user's balance, tracked through a mapping.
   - **Note:** You might run into an interesting error here about allowances, make sure to look further into the ERC20 token standard to see how to fix this error. 

2. **Withdrawing Tokens: Retrieving Assets**
   - **Functionality:** The `withdrawToken(uint256 amount)` function.
   - **How it Works:** Users can withdraw their ERC20 tokens from the contract. The contract checks if the user's balance is sufficient for the withdrawal request.

3. **Borrowing Tokens: Accessing Additional Assets**
   - **Functionality:** The `borrowToken(uint256 amount)` function.
   - **How it Works:** Users can borrow ERC20 tokens from the contract's balance. The function ensures the contract has enough tokens to lend.

4. **Repaying Tokens: Settling the Debt**
   - **Functionality:** The `repayToken(uint256 amount)` function.
   - **How it Works:** Users repay their borrowed ERC20 tokens to the contract. The function verifies that the repayment amount is appropriate.

## Instructions

### Step 1: Set Up Your Environment
- **Prepare Your Workspace**: Create a new folder named `lending_level2`.
- **Initialize a New Project**: Begin with a clean setup using `forge init`.

If you need help setting up your foundry project or you want to go over the commands of deploying, check out [Foundry-Exercise](../Final-Assignment/Foundry-Exercise.md)

### Step 2: Write the Contract
- **Track Balances and Borrowed Amounts**: Maintain records of ERC20 token deposits, withdrawals, and borrowed amounts.
- **Deposit Function**: Implement a `depositToken` function for users to add tokens.
- **Withdraw Function**: Create a `withdrawToken` function for users to take back their tokens.
- **Borrow Function**: Develop a `borrowToken` function for users to borrow tokens.
- **Repay Function**: Construct a `repayToken` function for users to return borrowed tokens.

Stuck? Check [Assignment-Hints](../Assignment-Hints/) for guidance.

Join our [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx) for support.

### Step 3: Compile
- **Ensure Accuracy**: Compile your contract and address any errors.

### Step 4: Deploy and Interact
- **Deployment**: Deploy your contract to the Scroll Sepolia network.
- **Verification**: Verify your contract for transparency.
- **Interaction**: Test the deposit, withdraw, borrow, and repay functions on Scrollscan.

## Final Thoughts

This is more than just a coding assignment; it's a journey into the intricate world of DeFi and smart contracts. Each line of code you write brings you closer to mastering the art of blockchain development.

After successfully deploying your contract, give yourself a round of applause. You've completed Level 2, marking a significant milestone in your journey as a smart contract developer.

Wondering if you've done it right?

Share a [scrollscan](https://scrollscan.com/) link of your verified contract in the [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx), and we'll provide feedback. Whether it's perfect or needs some tweaks, remember that the attempt itself is a great achievement.

Celebrate your journey in your own way, whether it's a message in the telegram group or [tweeting about your success](https://twitter.com/intent/tweet?text=I%20Cleared%20Level%202%20Of%20The%20Level%20Up%20Challenge!).

Feel free to tag us in your celebrations!
