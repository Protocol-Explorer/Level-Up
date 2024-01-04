## Table of Contents

1. **Solidity Version Pragma**
2. **Import Statement**
3. **Contract Declaration**
4. **Custom Errors**
5. **Events**
6. **State Variables**
7. **Constants**
8. **Constructor**
9. **External Functions**
10. **Public Functions**
11. **Modifiers**
12. **Internal Functions**
13. **View and Pure Functions**
14. **Error Handling**
15. **Event Emission**
16. **Mappings**
17. **Payable Functions**
18. **Function Modifiers**
19. **Return Statements**

---

### 1. Solidity Version Pragma
Specifies the compiler version for Solidity, ensuring compatibility and preventing issues with newer versions.
```solidity
pragma solidity ^0.8.7;
```

### 2. Import Statement
Used for including external code, such as interfaces or libraries. In this case, imports the ERC20 interface from OpenZeppelin and AggregatorV3Interface from Chainlink.
```solidity
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
```

### 3. Contract Declaration
Defines the start of the smart contract.
```solidity
contract AdvancedLending {
    // Contract code
}
```

### 4. Custom Errors
Defines custom errors for specific failure conditions.
```solidity
error InsufficientCollateral();
error InsufficientTokensInContract();
// Other errors
```

### 5. Events
Defines events for logging contract activities.
```solidity
event Deposited(address indexed user, uint256 amount);
// Other events
```

### 6. State Variables
Variables that store the state of the contract.
```solidity
IERC20 public token;
AggregatorV3Interface public priceFeed;
mapping(address => uint256) public tokenBalances;
// Other variables
```

### 7. Constants
Defines constant values.
```solidity
uint256 public constant COLLATERAL_FACTOR = 150; // 150%
```

### 8. Constructor
Initializes contract state when deployed.
```solidity
constructor(address tokenAddress, address priceFeedAddress) {
    // Constructor code
}
```

### 9. External Functions
Functions that can be called from outside the contract.
```solidity
function depositToken(uint256 amount) external {
    // Function code
}
// Other external functions
```

### 10. Public Functions
Functions accessible both internally and externally.
```solidity
function getRequiredCollateral(uint256 tokenAmount) public view returns (uint256) {
    // Function code
}
```

### 11. Modifiers
Not used in this contract.

### 12. Internal Functions
Not used in this contract.

### 13. View and Pure Functions
Functions that read state but do not modify it.
```solidity
function getRequiredCollateral(uint256 tokenAmount) public view returns (uint256) {
    // Function code
}
```

### 14. Error Handling
Using custom errors and revert statements for handling exceptions.
```solidity
if(msg.value < requiredCollateral) revert InsufficientCollateral();
// Other error handling
```

### 15. Event Emission
Emitting events to log actions.
```solidity
emit Deposited(msg.sender, amount);
// Other event emissions
```

### 16. Mappings
Data structures for storing associations.
```solidity
mapping(address => uint256) public tokenBalances;
// Other mappings
```

### 17. Payable Functions
Functions that can receive Ether.
```solidity
function borrowTokenWithCollateral(uint256 tokenAmount) external payable {
    // Function code
}
```

### 18. Function Modifiers
Not used in this contract.

### 19. Return Statements
Used in functions to return values.
```solidity
return tokenValueInEth * COLLATERAL_FACTOR / 100;
```


[<img alt="start here" width="250px" src="../../images/contracts.png" />](./Readme.md)