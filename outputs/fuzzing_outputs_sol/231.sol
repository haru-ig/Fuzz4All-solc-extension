pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback {
    address fallbackAddr;
    require(address(fallbackAddr)!= address(0));
    fallbackAddr = 0xb889b3811E95efBc6021D00a756064323163CB80;
    constructor() payable
    {
        assembly {
            sstore(add(0, 0), 1)
        }
    }

    receive() payable public
    {
    }
}
