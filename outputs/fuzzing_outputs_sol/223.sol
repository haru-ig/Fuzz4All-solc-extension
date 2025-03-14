pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback2 {

    address payable external selfDestructAddress;

    constructor() {
        address payable selfDestructAddress2 = payable(selfDestructAddress);
        selfdestruct(selfDestructAddress2);
    }
}
