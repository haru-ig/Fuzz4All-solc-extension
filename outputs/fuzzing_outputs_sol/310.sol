pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_6_M {
    constructor() {
        receive();
    }
    receive() external payable {}
}
contract CallFallbackFunctionThreePlusFallback_7_M {
    receive();
    constructor() {
        emit event();
    }
    receive() external payable {}
}
