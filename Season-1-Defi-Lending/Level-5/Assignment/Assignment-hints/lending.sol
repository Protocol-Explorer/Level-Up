// SPDX-License-Identifier: MIT
// This contract is not audited!!!
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Lending is ReentrancyGuard, Ownable {

error TransferFailed();
error TokenNotAllowed(address token);
error NeedsMoreThanZero();

/**
 * @notice Maps tokens to their corresponding Chainlink price feed addresses
 */
// fill mapping here...

/**
 * @notice List of ERC20 tokens allowed for deposit and borrowing
 */
// define list(array) here...

/**
 * @notice Nested mapping to track the amount of each token deposited by each account
 * @dev Account -> Token -> Amount
 */
// fill mapping here...

/**
 * @notice Nested mapping to track the amount of each token borrowed by each account
 * @dev Account -> Token -> Amount
 */
// fill mapping here...

// Constants

/**
 * @notice The percentage of the loan value that is given as a reward for liquidating a loan (5%)
 */
// define constant here...

/**
 * @notice The loan-to-value ratio at which a loan becomes eligible for liquidation (80%)
 */
// define constant here...

/**
 * @notice The minimum health factor required to avoid liquidation (1e18)
 */
// define constant here...

// Events

/**
 * @notice Emitted when a new token is allowed and its price feed is set
 * @param token The ERC20 token address
 * @param priceFeed The Chainlink price feed address for the token
 */
// define event here...

/**
 * @notice Emitted when a user deposits tokens
 * @param account The address of the user making the deposit
 * @param token The ERC20 token being deposited
 * @param amount The amount of tokens deposited
 */
// define event here...

/**
 * @notice Emitted when a user borrows tokens
 * @param account The address of the borrower
 * @param token The ERC20 token being borrowed
 * @param amount The amount of tokens borrowed
 */
// define event here...

/**
 * @notice Emitted when a user withdraws tokens
 * @param account The address of the user making the withdrawal
 * @param token The ERC20 token being withdrawn
 * @param amount The amount of tokens withdrawn
 */
// define event here...

/**
 * @notice Emitted when a user repays borrowed tokens
 * @param account The address of the borrower
 * @param token The ERC20 token being repaid
 * @param amount The amount of tokens repaid
 */
// define event here...

/**
 * @notice Emitted when a user's debt position is liquidated
 * @param account The address of the user being liquidated
 * @param repayToken The ERC20 token used to repay the debt
 * @param rewardToken The ERC20 token awarded to the liquidator
 * @param halfDebtInEth The ETH value of half of the user's debt
 * @param liquidator The address of the user performing the liquidation
 */
// define event here...


    /**
     * @notice Deposits the specified token into the contract
     * @dev Emits a Deposit event on success
     * @param token The address of the ERC20 token to deposit
     * @param amount The amount of the token to deposit
     */
    function deposit(address token, uint256 amount)
        external
        nonReentrant
        isAllowedToken(token)
        moreThanZero(amount)
    {
        // fill in function here...
    }

    /**
     * @notice Withdraws the specified token from the contract
     * @dev Emits a Withdraw event on success
     * @param token The address of the ERC20 token to withdraw
     * @param amount The amount of the token to withdraw
     */
    function withdraw(address token, uint256 amount) external nonReentrant moreThanZero(amount) {
        // fill in function here...
    }

    /**
     * @notice Internal function to handle withdrawal logic
     * @param account The account address to withdraw funds from
     * @param token The address of the ERC20 token to withdraw
     * @param amount The amount of the token to withdraw
     */
    function _pullFunds(
        address account,
        address token,
        uint256 amount
    ) private {
        // fill in function here...
    }

    /**
     * @notice Borrows the specified token from the contract
     * @dev Emits a Borrow event on success
     * @param token The address of the ERC20 token to borrow
     * @param amount The amount of the token to borrow
     */
    function borrow(address token, uint256 amount)
        external
        nonReentrant
        isAllowedToken(token)
        moreThanZero(amount)
    {
        // fill in function here...
    }

    /**
     * @notice Liquidates an account that is below the minimum health factor
     * @dev Emits a Liquidate event on success
     * @param account The account to liquidate
     * @param repayToken The address of the ERC20 token to repay
     * @param rewardToken The address of the ERC20 token to reward the liquidator
     */
    function liquidate(
        address account,
        address repayToken,
        address rewardToken
    ) external nonReentrant {
        // fill in function here...
    }

    /**
     * @notice Repays the specified token for the sender's account
     * @dev Emits a Repay event on success
     * @param token The address of the ERC20 token to repay
     * @param amount The amount of the token to repay
     */
    function repay(address token, uint256 amount)
        external
        nonReentrant
        isAllowedToken(token)
        moreThanZero(amount)
    {
        // fill in function here...
    }

    /**
     * @notice Internal function to handle repayment logic
     * @param account The account address to repay funds for
     * @param token The address of the ERC20 token to repay
     * @param amount The amount of the token to repay
     */
    function _repay(
        address account,
        address token,
        uint256 amount
    ) private {
        // fill in function here...
    }


    /**
     * @notice Retrieves the total borrowed and collateral value in ETH for a given user
     * @param user The address of the user to query
     * @return borrowedValueInETH The total value borrowed by the user in ETH
     * @return collateralValueInETH The total collateral value of the user in ETH
     */
    function getAccountInformation(address user)
        public
        view
        returns (uint256 borrowedValueInETH, uint256 collateralValueInETH)
    {
        // fill in function here...
    }

    /**
     * @notice Calculates the total collateral value in ETH for a given user
     * @param user The address of the user to query
     * @return The total collateral value in ETH
     */
    function getAccountCollateralValue(address user) public view returns (uint256) {
        // fill in function here...
    }

    /**
     * @notice Calculates the total borrowed value in ETH for a given user
     * @param user The address of the user to query
     * @return The total borrowed value in ETH
     */
    function getAccountBorrowedValue(address user) public view returns (uint256) {
        // fill in function here...
    }

    /**
     * @notice Converts the amount of a token to its equivalent value in ETH
     * @param token The address of the token
     * @param amount The amount of the token to convert
     * @return The equivalent value in ETH
     */
    function getEthValue(address token, uint256 amount) public view returns (uint256) {
        // fill in function here...
    }

    /**
     * @notice Converts an amount in ETH to its equivalent value in a specified token
     * @param token The address of the token
     * @param amount The amount in ETH to convert
     * @return The equivalent value in the specified token
     */
    function getTokenValueFromEth(address token, uint256 amount) public view returns (uint256) {
        // fill in function here...
    }

    /**
     * @notice Calculates the health factor for a given account
     * @param account The address of the account
     * @return The health factor of the account
     */
    function healthFactor(address account) public view returns (uint256) {
        // fill in function here...
    }

    // Modifiers

    /**
     * @notice Ensures the token is allowed for deposit and borrowing
     * @param token The address of the token to check
     */
    modifier isAllowedToken(address token) {
        // fill in modifier here...
    }

    /**
     * @notice Ensures the amount specified is greater than zero
     * @param amount The amount to check
     */
    modifier moreThanZero(uint256 amount) {
        // fill in modifier here...
    }

    // DAO / OnlyOwner Functions

    /**
     * @notice Sets a token as allowed and associates it with a Chainlink price feed
     * @param token The address of the ERC20 token to allow
     * @param priceFeed The address of the Chainlink price feed for the token
     */
    function setAllowedToken(address token, address priceFeed) external onlyOwner {
        // fill in function here...
    }

}
