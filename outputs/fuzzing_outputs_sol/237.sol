pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() public payable
    {
        assembly {
            sstore(add(0, 0), 1)
        }
    }
}

contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() public payable
    {
        assembly {
            sstore(add(0, 0), 1)
        }
    }
}
