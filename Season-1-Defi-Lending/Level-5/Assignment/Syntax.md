
1. **Pragma Directive**: 
   - `pragma solidity ^0.8.7;` - Specifies the compiler version.

2. **Import Statements**: 
   - `import "@openzeppelin/contracts/...";` - Imports from OpenZeppelin library.
   - `import "@chainlink/contracts/...";` - Imports from Chainlink library.

3. **Error Declarations**: 
   - `error TransferFailed();`
   - `error TokenNotAllowed(address token);`
   - `error NeedsMoreThanZero();`

4. **Contract Declaration**: 
   - `contract Lending is ReentrancyGuard, Ownable { ... }`

5. **State Variables**: 
   - Mappings like `mapping(address => address) public s_tokenToPriceFeed;`
   - Arrays like `address[] public s_allowedTokens;`
   - Constants like `uint256 public constant LIQUIDATION_REWARD = 5;`

6. **Events**: 
   - `event AllowedTokenSet(address indexed token, address indexed priceFeed);`
   - `event Deposit(address indexed account, address indexed token, uint256 indexed amount);`
   - Other events like `Borrow`, `Withdraw`, `Repay`, `Liquidate`.

7. **Functions**: 
   - Public and external functions like `deposit`, `withdraw`, `borrow`, `liquidate`, `repay`.
   - Private functions like `_pullFunds`, `_repay`.
   - View functions like `getAccountInformation`, `getEthValue`, `getTokenValueFromEth`, `healthFactor`.

8. **Modifiers**: 
   - `modifier isAllowedToken(address token) { ... }`
   - `modifier moreThanZero(uint256 amount) { ... }`

9. **Control Structures**: 
   - `if` statements, `for` loops, `require` statements.

10. **Arithmetic and Logical Operations**: 
    - Operations like `+=`, `-=`, `/`, `*`, `==`, `>=`.

11. **Comments**: 
    - Single line (`//`) and multi-line (`/* ... */`) comments.

12. **Solidity-Specific Constructs**: 
    - `emit` for triggering events.
    - `revert` for error handling.
    - `address(this)` for the contract's address.
    - Solidity's type system (e.g., `uint256`, `address`).
    
[<img alt="start here" width="250px" src="../../images/contracts.png" />](./Readme.md)