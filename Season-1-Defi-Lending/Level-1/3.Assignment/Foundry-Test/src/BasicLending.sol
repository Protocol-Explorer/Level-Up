//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BasicLending {
    mapping(address => uint256) public balances;

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
        payable(msg.sender).transfer(amount);
    }
}
