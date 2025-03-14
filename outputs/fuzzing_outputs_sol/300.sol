pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_4_S {
    function getOnePlusOne() public pure returns (uint16) {
        return 1 + 1;
    }
    constructor() {}
    receive() external payable {}
}
