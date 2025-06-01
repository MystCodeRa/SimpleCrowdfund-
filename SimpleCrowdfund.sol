//SPDX-license-Identifier:MIT
pragma solidity ^0.8.0;

contract SimpleCrowdFund {
    address public owner;
    uint public goal;
    uint public amountRaised;
    bool public goalReached;

    mapping(address => uint) public contributions;

    constructor(uint _goal) {
        owner = msg.sender;
        goal = _goal;
    }

    function fund() public payable {
        require(msg.value > 0, "Zero contribution not allowed.");
        contributions[msg.sender] += msg.value;
        amountRaised += msg.value;

        if (amountRaised >= goal) {
            goalReached = true;
        }
    }

    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw.");
        require(goalReached, "Goal not yet reached.");
        payable(owner).transfer(address(this).balance);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
