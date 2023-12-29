// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.7;

// import { Test } from "forge-std/Test.sol";
// import { BasicLending } from "../src/BasicLending.sol";

// contract BasicLendingTest is Test {
//     BasicLending basicLending; // Declare a variable for the BasicLending contract
//     address constant user1 = address(1); // Define a constant user address for testing

//     // Runs before each test to set up the contract environment
//     function setUp() public {
//         basicLending = new BasicLending(); // Instantiate a new BasicLending contract before each test
//     }

//     // Test the borrow functionality
//     function testBorrow() public {
//         // Define a mock borrower address for testing
//         // Set the deposit amount to 1 ether
//         // Set the borrow amount to 0.5 ether
//         // Provide the contract with 1 ether for testing borrow functionality
//         // Impersonate the borrower for the next transaction
//         // Set the borrower's balance to 0 for a controlled test environment
//         // Store the initial balance of the borrower
//         // Execute the borrow function with the specified borrow amount
//         // Expected contract balance before borrowing
//         // Actual contract balance after borrowing
//         // Final balance of the borrower after borrowing
//         // Assert that the contract's balance decreased by the borrow amount
//         // Assert that the borrower's balance increased by the borrow amount
//     }

//     // Test the deposit functionality
//     function testDeposit() public {
//         // Set the deposit amount to 1 ether
//         // Provide the test contract with 1 ether to test deposit functionality
//         // Execute the deposit function with the specified deposit amount
//         // Assert that the deposit amount is correctly recorded in the contract's balances
//     }

//     // Test the user's ability to withdraw
//     function testUserWithdraw() public {
//         // Define a mock user address for testing
//         // Set the deposit amount to 1 ether
//         // Set the withdrawal amount to 0.5 ether
//         // Impersonate the user for the next transaction
//         // Provide the user with 1 ether to test deposit and withdraw functionality
//         // Execute the deposit function with the specified deposit amount
//         // Get the user's balance after depositing
//         // Assert that the user's balance after deposit equals the deposit amount
//         // Impersonate the user again for the withdraw transaction
//         // Execute the withdraw function with the specified withdraw amount
//         // Get the user's balance after withdrawing
//         // Assert that the user's balance after withdraw equals the deposit amount minus the withdraw amount
//     }

//     // Test that withdrawal fails when the balance is insufficient
//     function testWithdrawFail() public {
//         // Set the withdrawal amount to 1 ether
//         // Attempt to withdraw and expect a revert due to insufficient balance
//         // If this line is reached, the test should fail as the withdrawal should have reverted
//         // Assert that the transaction reverted for the expected reason
//     }
// }
