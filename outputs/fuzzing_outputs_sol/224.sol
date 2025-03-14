pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback {
    constructor() {
        callFallback();
    }

    fallback () public payable {}
    receive () external payable {}

    function callFallback() public payable {
          selfdestruct(uint160(address(this)));
        }
}
