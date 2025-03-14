pragma solidity ^0.8.0;
contract SemanticMutation7
{
    uint256 public test = 10;
    constructor() public payable {
    	test /= 8;
    	test *= 89;
    }
}
