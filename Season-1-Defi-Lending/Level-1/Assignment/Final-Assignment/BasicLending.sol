// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title BasicLending
 * @notice A simple lending contract allowing deposit, withdrawal, borrowing, and repayment of Ether.
 */
contract BasicLending {
    /**
     * @notice Mapping of lender addresses to their deposited balances.
     */
    // fill in mapping here...
    /**
     * @notice Mapping of borrower addresses to their borrowed balances.
     */
    // fill in mapping here...

    /**
     * @notice Allows a user to deposit Ether into the contract.
     * @dev Adds the deposited amount to the sender's balance in the mapping.
     */
    // build function here...

    /**
     * @notice Allows a user to withdraw Ether from their balance in the contract.
     * @dev Subtracts the withdrawn amount from the sender's balance and transfers the Ether.
     * @param amount The amount of Ether to withdraw.
     */
    // build function here...

    /**
     * @notice Allows a user to borrow Ether from the contract.
     * @dev Transfers the requested amount of Ether to the sender if the contract has sufficient balance.
     * @param amount The amount of Ether to borrow.
     */
    // build function here...

    /**
     * @notice Allows a user to repay borrowed Ether to the contract.
     * @dev Subtracts the repaid amount from the sender's borrowed amount.
     */
    // build function here...
}
