pragma solidity ^0.8.0;
contract MixedContactsExample {
    address payable owner;
    uint256 public immutable hello;
    constructor() {
        owner = payable(msg.sender);
        hello = 2;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "NOT-OWNER");
        _;
    }


    function transferOwnership(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
