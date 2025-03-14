pragma solidity ^0.8.0;
contract SemanticMutation6
{
    uint256 public test = 23;
    constructor() public {
    	test /= 10;
    	test *= 1;
    }
}
