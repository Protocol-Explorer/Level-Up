// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {Test} from "forge-std/Test.sol";
import {BasicLending} from "../src/BasicLending.sol";

contract BasicLendingTest is Test {
    BasicLending basicLending;
    address constant user1 = address(1);

    function setUp() public {
        basicLending = new BasicLending();
    }

   function testBorrow() public {
    // Arrange
    address borrower = address(0x100); // Use a non-special, arbitrary address
    uint256 depositAmount = 1 ether;
    uint256 borrowAmount = 0.5 ether;

    vm.deal(address(basicLending), depositAmount); // Ensure the contract has enough funds

    // Act
    vm.prank(borrower); // Impersonate the borrower
    vm.deal(borrower, 0); // Set the initial balance of the borrower to 0
    uint256 initialBorrowerBalance = borrower.balance; // Record borrower's initial balance
    basicLending.borrow(borrowAmount); // Now the borrower is address(0x100)

    // Assert
    uint256 contractBalanceBefore = depositAmount;
    uint256 contractBalanceAfter = address(basicLending).balance;
    uint256 finalBorrowerBalance = borrower.balance; // Record borrower's final balance
    assertEq(contractBalanceBefore - borrowAmount, contractBalanceAfter, "Contract balance should decrease by borrow amount");
    assertEq(finalBorrowerBalance, initialBorrowerBalance + borrowAmount, "Borrower's balance should increase by borrow amount");


    // Add your assertions here
}

function testDeposit() public {
    // Arrange
    uint256 depositAmount = 1 ether;
    vm.deal(address(this), depositAmount); // Provide Ether to the test contract

    // Act
    basicLending.deposit{value: depositAmount}();

    // Assert
    assertEq(basicLending.balances(address(this)), depositAmount, "Deposit amount should be recorded in balances");
}

function testUserWithdraw() public {
    // Arrange
    address user = address(0x123); // Mock user address
    uint256 depositAmount = 1 ether;
    uint256 withdrawAmount = 0.5 ether;

    // Provide initial Ether to the contract
    //payable(address(basicLending)).transfer(depositAmount);

    // Act
    // User deposits Ether
    vm.prank(user);
    vm.deal(user, depositAmount);
    basicLending.deposit{value: depositAmount}();

    // Assert deposit
    uint256 userBalanceAfterDeposit = basicLending.balances(user);
    assertEq(userBalanceAfterDeposit, depositAmount, "User balance should equal deposit amount");

    // User withdraws Ether
    vm.prank(user);
    basicLending.withdraw(withdrawAmount);

    // Assert withdraw
    uint256 userBalanceAfterWithdraw = basicLending.balances(user);
    assertEq(userBalanceAfterWithdraw, depositAmount - withdrawAmount, "User balance should be reduced by withdraw amount");

    // Additional assertions can be made here to verify contract's Ether balance
}



    function testWithdrawFail() public {
        // Test to ensure withdraw fails with insufficient balance
        uint256 withdrawAmount = 1 ether;

        // Act & Assert
        try basicLending.withdraw(withdrawAmount) {
            fail("Should have reverted due to insufficient balance");
        } catch Error(string memory reason) {
            assertEq(reason, "Insufficient balance", "Should fail with insufficient balance error");
        }
    }


}
