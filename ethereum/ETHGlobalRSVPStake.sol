
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ETHGlobalRSVP {
    address public admin;

    mapping(address => uint) addressToStakedAmount;

    constructor() {
        admin = msg.sender;
    }

    function getContractBalance() external view returns (uint) {
        return address(this).balance;
    }

    function getStakedAmount() external view returns (uint) {
        return addressToStakedAmount[msg.sender];
    }

    function stake() external payable {
        address staker = msg.sender;
        uint stakingAmount = msg.value;

        addressToStakedAmount[staker] += stakingAmount;
    }
}
