# Smart Contract Development: Level 1 - Basic Lending, Borrowing, and Repayment Contract

Welcome to Level 1 of your Smart Contract Development adventure! With a solid grasp of Solidity syntax under your belt, it's now time to put that knowledge into action. Your challenge is to craft an Ethereum lending, borrowing, and repayment contract. This is where theory meets practice, and where you start transforming lines of code into a functional blockchain application. Are you ready to embark on this exciting phase of your journey? Let's begin!

## Objective

Your task is to develop a simple Ethereum lending, borrowing, and repayment contract. This contract will lay the groundwork for more complex functionalities in the coming levels. Think of it as building the foundation of a skyscraper – solid, reliable, and essential.

## The Essence of the Basic Lending Contract

The Basic Lending Contract is designed to facilitate four core functionalities: depositing, withdrawing, borrowing, and repaying Ethereum (ETH). It's a starting point for understanding how smart contracts can manage user interactions and financial transactions in a decentralized environment. Let's break down each function and its flow:

1. **Depositing ETH: The First Step**
   - **Functionality:** The `deposit()` function.
   - **How it Works:** Users call this function to add ETH to the contract. It's marked as payable, allowing the function to receive ETH. The deposited amount is added to the user's balance, tracked in the contract through a mapping.

2. **Withdrawing ETH: Taking Funds Out**
   - **Functionality:** The `withdraw(uint256 amount)` function.
   - **How it Works:** Users can withdraw ETH from their balance in the contract. The contract checks if the user's balance is sufficient for the withdrawal request.

3. **Borrowing ETH: Accessing Funds**
   - **Functionality:** The `borrow(uint256 amount)` function.
   - **How it Works:** Users can borrow ETH from the contract's balance. The function checks if the contract has enough ETH to lend.

4. **Repaying ETH: Settling Borrowed Funds**
   - **Functionality:** The `repay()` function.
   - **How it Works:** Users repay their borrowed ETH to the contract. The function ensures that the repayment amount is not less than the borrowed amount.

## Instructions

### Step 1: Set Up Your Environment
- **Prepare Your Workspace**: Create a New Folder called lending_level2
- **Initialize a New Project**: Start with a clean slate using `forge init`.

If you need help setting up your foundry project or you want to go over the commands of deploying, check out [Foundry-Exercise](../Final-Assignment/Foundry-Exercise.md)

### Step 2: Write the Contract
- **User Balances and Borrowed Amounts**: Track ETH deposits, withdrawals, and borrowed amounts.
- **Deposit Function**: Implement a `deposit` function for users to add ETH.
- **Withdraw Function**: Add a `withdraw` function for users to retrieve their ETH.
- **Borrow Function**: Create a `borrow` function for users to take out loans.
- **Repay Function**: Develop a `repay` function for users to return borrowed ETH.

Stuck? Check [Assignment-Hints](../Assignment-Hints/) for guidance.

Join our [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx) for support.

### Step 3: Compile
- **Ensure Accuracy**: Compile your contract and resolve any errors.

### Step 4: Deploy and Interact
- **Deployment**: Deploy your contract to the Scroll Sepolia network.
- **Verification**: Verify your contract for transparency.
- **Interaction**: Test deposit, withdraw, borrow, and repay functions on Scrollscan.

## Final Thoughts

Remember, this is more than just a coding assignment. It's about understanding the fundamentals, being meticulous with your work, and taking pride in what you build. Each line of code is a step towards mastering smart contract development.

Once you've succesfully deployed your contract, pat yourself on the back. You've just completed Level 1, thats your first step in this journey to becoming smart contract developer.

But wait...how do you know you got it right?

Drop a [scrollscan](https://scrollscan.com/) link to your verified contract in the [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx) and one of us will have a look. We'll reach out either congratulating you or advise.

Whether you got it right or not, the attempt is an achievement. 

Celebrate your journey however you want, by dropping a message in tg or [even tweeting about it](https://twitter.com/intent/tweet?text=I%Cleared%Level%1%Of%The%Level%Up%Challenge!)

Feel free to tag us!
