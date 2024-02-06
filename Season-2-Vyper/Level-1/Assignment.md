# Smart Contract Development: Level 1 - Basic Storage and Retrieval Contract

Welcome to Level 1 of your Smart Contract Development journey, where we transition from theory to practice using Vyper, a Pythonic programming language for Ethereum smart contracts. Your challenge is to develop a simple storage system on the Ethereum blockchain. This introductory project will familiarize you with the core concepts of smart contracts, including state management, function execution, and interaction patterns. Ready to turn your ideas into blockchain reality? Let's dive in!

## Objective

Your mission is to create a Vyper contract that allows users to store and retrieve numerical values. This foundational contract will serve as a stepping stone towards more intricate smart contracts, emphasizing the importance of data storage and manipulation on the blockchain.

## The Essence of the Basic Storage Contract

The Basic Storage Contract is crafted to demonstrate the fundamental capabilities of Vyper in managing data on the blockchain. It encompasses variables for state tracking, arrays for ordered data storage, and mappings for efficient data retrieval. Here's a closer look at each component:

1. **Storing Values: Building the Data Structure**
   - **Functionality:** Utilizing state variables and arrays.
   - **How it Works:** The contract uses a state variable to keep track of the total number of stored values and an array to hold these values, allowing for sequential data storage.

2. **Adding Values: Expanding the Storage**
   - **Functionality:** The `add_value(uint256 value)` function.
   - **How it Works:** Users can add new values to the contract's storage, which updates both the array and the mapping, ensuring data consistency and facilitating easy access.

3. **Retrieving Values: Accessing Stored Data**
   - **Functionality:** Functions like `get_value_by_index(uint256 index)` and `get_value_from_array(uint256 index)`.
   - **How it Works:** These functions allow users to retrieve stored values using their indices, showcasing the dual data access patterns through mappings and arrays.

## Instructions

### Step 1: Set Up Your Environment
- **Prepare Your Workspace**: Create a new folder named `basic_storage`.
- **Initialize Your Vyper Project**: Begin with a fresh setup.

If you need assistance setting up your Vyper environment, refer to [Vyper-Setup-Guide](../Final-Assignment/Vyper-Setup-Guide.md).

### Step 2: Implement the Contract
- **State Tracking**: Implement variables to track the total values and storage structures.
- **Data Storage Functions**: Code the `add_value` function for users to store new values.
- **Data Retrieval Functions**: Implement retrieval functions to access stored values.

Looking for a hint? Visit [Assignment-Hints](../Assignment-Hints/) for some guidance.

Join our [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx) for community support.

### Step 3: Compile and Test
- **Accuracy Check**: Compile your contract and iron out any bugs.

### Step 4: Deploy and Verify
- **Deployment**: Launch your contract onto a test network like Goerli.
- **Verification**: Ensure your contract is transparent by verifying its source code.
- **Interaction**: Test the storage and retrieval functionalities.

## Final Thoughts

This task is an introduction to the practical side of smart contract development, emphasizing clean, efficient coding practices and a deep understanding of how smart contracts interact with blockchain data. 

Successfully deploying your contract marks a significant milestone in your journey as a budding smart contract developer.

Wondering if you've nailed it?

Drop a [scrollscan](https://scrollscan.com/) link to your verified contract in the [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx) and one of us will have a look. We'll reach out either congratulating you or advise.

Whether you got it right or not, the attempt is an achievement. 

Celebrate your journey however you want, by dropping a message in tg or [even tweeting about it](https://twitter.com/intent/tweet?text=I%Cleared%Level%1%Of%The%Level%Up%Challenge!)

Feel free to tag us!

