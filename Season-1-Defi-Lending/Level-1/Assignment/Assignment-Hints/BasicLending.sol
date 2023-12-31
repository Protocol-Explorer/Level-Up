// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BasicLending {
    mapping(address => uint256) public balances;
    mapping(address => uint256) public borrowedAmounts;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function borrow(uint256 amount) external {
        require(address(this).balance >= amount, "Insufficient funds in contract");
        borrowedAmounts[msg.sender] += amount;
        payable(msg.sender).transfer(amount);
    }

    function repay() external payable {
        uint256 borrowedAmount = borrowedAmounts[msg.sender];
        require(msg.value >= borrowedAmount, "Repayment amount is less than borrowed amount");
        borrowedAmounts[msg.sender] -= msg.value;
        balances[address(this)] += msg.value;
    }
}
