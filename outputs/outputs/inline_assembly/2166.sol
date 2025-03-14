pragma solidity ^0.8.0;
contract MutationGenerator3
{
    address owner;
    modifier onlyOwner
    {
        require(owner == msg.sender, "Owner only");
        _;
    }
    constructor() {
        owner = msg.sender;
    }
    function create() public onlyOwner returns (uint) {
        return 3;
    }
}
