// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract requiredDemo {
    uint256 public num1 = 10;
    uint256 public num2 = 6;

    function addNumber() public view returns (uint256 sum, uint256 product) {
        require(num1 > num2, "num1 must be greater than num2");
        sum = num2 + num2;
        product = num1 * num2;
    }
}
