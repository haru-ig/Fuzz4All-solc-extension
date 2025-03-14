pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() payable
    {
        assembly {
            sstore(0, 1)
            sstore(1, 2)
        }
    }
}
