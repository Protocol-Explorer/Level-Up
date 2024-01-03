## Table of Contents

1. **Solidity Version Pragma**
2. **Import Statement**
3. **Contract Declaration**
4. **State Variables**
5. **Mapping**
6. **Constructor**
7. **Functions**
8. **External Keyword**
9. **Require Statements**
10. **Transferring Tokens**
11. **ERC20 Token Interface**
12. **Error Handling**

---

### 1. Solidity Version Pragma
Specifies the compiler version for Solidity, ensuring compatibility and preventing issues with newer versions.
```solidity
pragma solidity ^0.8.7;
```

### 2. Import Statement
Used for including external code, such as interfaces or libraries. In this case, imports the ERC20 interface from OpenZeppelin.
```solidity
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
```

### 3. Contract Declaration
Defines the start of the smart contract.
```solidity
contract TokenLending {
    // Contract code
}
```

### 4. State Variables
Variables that store persistent data on the blockchain. Their visibility can be public, internal, or private.
```solidity
mapping(address => uint256) public tokenBalances;
mapping(address => uint256) public borrowedAmounts;
IERC20 public token;
```

### 5. Mapping
A key-value data structure, ideal for linking values to unique keys. Used here to track token balances and borrowed amounts.
```solidity
mapping(address => uint256) public tokenBalances;
```

### 6. Constructor
A special function that is executed during contract deployment. Used to initialize state variables.
```solidity
constructor(address tokenAddress) {
    token = IERC20(tokenAddress);
}
```

### 7. Functions
Contains the core logic of the contract. They can be marked as public, private, internal, or external.
```solidity
function depositToken(uint256 amount) external {
    // Function logic
}
```

### 8. External Keyword
Specifies that a function is callable only from outside the contract.
```solidity
function withdrawToken(uint256 amount) external {
    // Implementation
}
```

### 9. Require Statements
Used for validating conditions. If the condition fails, the transaction is reverted.
```solidity
require(tokenBalances[msg.sender] >= amount, "Insufficient token balance");
```

### 10. Transferring Tokens
Involves ERC20 token operations, such as transferring tokens to and from the contract.
```solidity
token.transfer(msg.sender, amount);
```

### 11. ERC20 Token Interface
The standard interface for ERC20 tokens, allowing interaction with various ERC20 tokens in a uniform manner.
```solidity
IERC20 public token;
```

### 12. Error Handling
Handling errors and reverting transactions when conditions are not met or invalid operations are attempted.
```solidity
require(borrowedAmounts[msg.sender] >= amount, "Repay amount exceeds borrowed amount");
```

[<img alt="start here" width="250px" src="../../images/contracts.png" />](./Readme.md)