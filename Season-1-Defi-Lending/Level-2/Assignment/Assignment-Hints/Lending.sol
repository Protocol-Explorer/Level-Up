//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title TokenLending
 * @notice A contract for lending ERC20 tokens with deposit, withdrawal, borrowing, and repayment functionalities.
 */

/**
 * @notice Mapping of user addresses to their token balances in the contract.
 */

/**
 * @notice Mapping of user addresses to the amount of tokens they have borrowed.
 */

/**
 * @notice The ERC20 token that this contract facilitates lending for.
 */

/**
 * @notice Creates a new TokenLending contract.
 * @dev Sets the token that will be used for lending.
 * @param tokenAddress The address of the ERC20 token contract.
 */

/**
 * @notice Allows a user to deposit tokens into the contract.
 * @dev Transfers tokens from the sender to the contract and updates the sender's balance.
 * @param amount The amount of tokens to deposit.
 */

/**
 * @notice Allows a user to withdraw tokens from their balance in the contract.
 * @dev Subtracts the withdrawn amount from the sender's balance and transfers the tokens.
 * @param amount The amount of tokens to withdraw.
 */

/**
 * @notice Allows a user to borrow tokens from the contract.
 * @dev Transfers the requested amount of tokens to the sender if the contract has sufficient balance.
 * @param amount The amount of tokens to borrow.
 */

/**
 * @notice Allows a user to repay borrowed tokens to the contract.
 * @dev Subtracts the repaid amount from the sender's borrowed balance and transfers the tokens to the contract.
 * @param amount The amount of tokens to repay.
 */
