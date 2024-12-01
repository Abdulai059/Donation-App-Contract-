// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./PriceConverter.sol";

contract Donation {
    using PriceConverter for uint256;
    address public owner; // store the owner of the contract
    uint256 public constant MINIMUM_USD = 50 * 1e18; // $50 in USD

    // Track donations by address
    mapping(address => uint256) public donations;
    address[] public funders; // Keep a list of all donors

    // Events to log donations and withdrawals
    event DonationReceived(address indexed donor, uint256 amount);
    event FundsWithdrawn(address indexed owner, uint256 amount);

    // Modifier to restrict access to owner-only functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender; // set the owner deployer as the owner
    }

    // Payable function to accept donations
    function fund() public payable {
        require(
            msg.value.getConversionRate() >= MINIMUM_USD,
            "Minimum donation is $50"
        );
        donations[msg.sender] += msg.value; // Track the donation amouuunt
        funders.push(msg.sender); // Add the sender to the list of funders
        emit DonationReceived(msg.sender, msg.value); // Log the donation
    }

    // Function to withdraw all funds (only owner can call)
    function withdraw() public onlyOwner {
        uint256 contractBalance = address(this).balance;
        require(contractBalance > 0, "Contract has no funds to withdraw");

        // Transfer all funds to the owner
        (bool success, ) = owner.call{value: contractBalance}("");
        require(success, "Failed to send funds to owner");
    }
}
