pragma solidity ^0.8.7;

/**
 * @title BasicLending
 * @notice A simple lending contract allowing deposit, withdrawal, and borrowing of Ether.
 */
contract BasicLending {
    /**
     * @notice Mapping of user addresses to their deposited balances.
     */
    // define your mapping here...

    /**
     * @notice Allows a user to deposit Ether into the contract.
     * @dev Adds the deposited amount to the sender's balance in the mapping.
     */
    function deposit() external payable {
        // fill in function here...
    }

    /**
     * @notice Allows a user to withdraw Ether from their balance in the contract.
     * @dev Subtracts the withdrawn amount from the sender's balance and transfers the Ether.
     * @param amount The amount of Ether to withdraw.
     */
    function withdraw(uint256 amount) external {
        // fill in function here...
    }

    /**
     * @notice Allows a user to borrow Ether from the contract.
     * @dev Transfers the requested amount of Ether to the sender if the contract has sufficient balance.
     * @param amount The amount of Ether to borrow.
     */
    function borrow(uint256 amount) external {
        // fill in function here...
    }
}
