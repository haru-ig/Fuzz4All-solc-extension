pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback {
    constructor() {



        selfdestruct(address(0));
    }
}
