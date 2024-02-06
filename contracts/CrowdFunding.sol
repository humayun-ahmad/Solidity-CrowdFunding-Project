// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CrowdFunding{
    mapping(address=>uint) public contributors;
    address public manager;
    uint public minimumContribution;
    uint public deadline;
    uint public target;
    uint public raisedAmount;
    uint public noOfContributors;


    constructor(uint _target, uint _deadline){
        target = _target;
        deadline = _deadline;
        minimumContribution=100 wei;
        manager=msg.sender;
    }
}