pragma solidity ^0.8.0;
contract SemanticMutation7
{

    struct MyStruct {
        uint a;
        uint b;
        uint [4, 2] c;
    }

    uint256 public test = 23;

    constructor () public {
    	test /= 10;
    	test *= 1;
    	test += 1;
    	test %= 4;
    }
}
