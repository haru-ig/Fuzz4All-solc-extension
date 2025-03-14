pragma solidity ^0.8.0;
contract SemanticMutation4
{
    uint256 public test;
    constructor(uint256 t) public {
    	test = t;
    	test *= 10;
        test /= 200 + 10;
    	test += 10;
    }
}
