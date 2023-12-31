# Solidity Syntax Guide for Smart Contract Development

OK. This. is. not. a. course.
This guide gives you an overview of the syntax used in the contract at this level.

If anything feels unfamiliar or you feel uncomfortable with a specific concept, that's your cue to go back to the [Cyfrin course](https://updraft.cyfrin.io/courses/solidity).

Secondly, we developed a bleeding-edge tool powered by AI that will help you master syntax...ok, not exactly.

We've built this training module that has random Solidity exercises. It is in beta, but it's meant to give you exercises where you can do some dumb practice.

To become more comfortable with the syntax, head to [Protocol Explorer](https://www.protocolexplorer.com/exercises).

ps. If you want to help us make this training module better, slide in our dms!

## Table of Contents

1. **SPDX License Identifier**
2. **Solidity Version Pragma**
3. **Contract Declaration**
4. **State Variables**
5. **Mapping**
6. **Functions**
7. **Payable Keyword**
8. **Global Objects**
9. **Require Statements**
10. **Transferring Ether**
11. **Address Type**
12. **Error Handling**
13. **Comments**

---

### 1. SPDX License Identifier
Indicates the licensing of your contract, a requirement for publishing on platforms like GitHub.
```solidity
// SPDX-License-Identifier: MIT
```

### 2. Solidity Version Pragma
Ensures your contract is compatible with specific compiler versions to prevent issues with future updates.
```solidity
pragma solidity ^0.8.19;
```

### 3. Contract Declaration
The starting point of your contract. Think of it as a class in object-oriented languages.
```solidity
contract BasicLending {
    // Contract code here
}
```

### 4. State Variables
Variables that store the state of the contract on the blockchain. Their visibility can be public, internal, or private.
```solidity
uint256 public totalLentAmount;
```

### 5. Mapping
A key-value pair data structure, excellent for associating values with unique keys.
```solidity
mapping(address => uint256) private balances;
```

### 6. Functions
Where the logic of your contract is implemented. Functions can be public, private, internal, or external.
```solidity
function deposit() external payable {
    // Function implementation
}
```

### 7. Payable Keyword
Allows your function to accept Ether transactions.
```solidity
function fundContract() external payable {}
```

### 8. Global Objects
Provides information about the blockchain and transaction properties.
```solidity
address senderAddress = msg.sender;
uint256 sentValue = msg.value;
```

### 9. Require Statements
Used for input validation and condition checking, reverting transactions if conditions fail.
```solidity
require(msg.value > 0, "Deposit must be greater than 0");
```

### 10. Transferring Ether
Facilitates the transfer of Ether from the contract to an address.
```solidity
payable(userAddress).transfer(withdrawAmount);
```

### 11. Address Type
Stores Ethereum addresses. They are fundamental in identifying contract and user addresses.
```solidity
address public contractOwner;
```

### 12. Error Handling
Ensures contract reliability through assertions and error checks.
```solidity
assert(balance[msg.sender] >= withdrawalAmount);
```

### 13. Comments
Essential for code documentation, aiding in readability and maintenance.
```solidity
// A single-line comment explaining a variable
/* A multi-line comment
   for detailed explanations */
```
**TIME FOR THE FINAL ASSIGNMENT(CLICK BELOW)**

[<img alt="start here" width="250px" src="../../images/contracts.png" />](./Readme.md)
---
