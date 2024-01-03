// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Collateral Lending Contract
 * @notice This contract allows users to deposit ERC20 tokens, borrow against them as collateral, and repay their loans.
 * @dev This contract does not handle interest rates or loan durations.
 */
contract CollateralLending {
    /// @notice Stores the token balances of each user.
    // define mapping here...

    /// @notice Stores the borrowed token amounts of each user.
    // define mapping here...

    /// @notice The ERC20 token used for lending and borrowing.
    IERC20 public token;

    /// @notice The collateral factor, representing the percentage of tokens required as collateral.
    // define constant variable here...

    /**
     * @notice Sets the token to be used for lending and borrowing.
     * @param tokenAddress The address of the ERC20 token.
     */
    constructor(address tokenAddress) {
        token = IERC20(tokenAddress);
    }

    /**
     * @notice Allows users to deposit tokens into the contract.
     * @param amount The amount of tokens to deposit.
     */
    function depositToken(uint256 amount) external {
        // fill in funciton here...
    }

    /**
     * @notice Allows users to withdraw their tokens from the contract.
     * @param amount The amount of tokens to withdraw.
     * @dev Requires that the user has enough balance to withdraw.
     */
    function withdrawToken(uint256 amount) external {
        // fill in funciton here...
    }

    /**
     * @notice Allows users to borrow tokens by providing ETH as collateral.
     * @param tokenAmount The amount of tokens to borrow.
     * @dev Requires that the user provides enough ETH as collateral and that the contract has enough tokens to lend.
     */
    function borrowTokenWithCollateral(uint256 tokenAmount) external payable {
        // fill in funciton here...
    }

    /**
     * @notice Allows users to repay their borrowed tokens.
     * @param tokenAmount The amount of tokens to repay.
     * @dev Requires that the user has borrowed at least the amount they are trying to repay.
     */
    function repayToken(uint256 tokenAmount) external {
        // fill in funciton here...
    }

    /**
     * @notice Allows for the liquidation of a borrower's collateral if they fail to maintain the required collateral factor.
     * @param borrower The address of the borrower.
     * @param tokenAmount The amount of tokens to be liquidated.
     * @dev Requires that the borrower's collateral is less than the required amount and that they have borrowed the specified token amount.
     */
    function liquidate(address borrower, uint256 tokenAmount) external payable {
        // fill in funciton here...
    }
}
