pragma solidity ^0.8.0;
address payable payableFallbackZero = address(uint160(address(new CallFallbackFunctionOnePlusFallback0())));
contract CallFallbackFunctionOnePlusFallback1 {
    mapping(address => bool) notSawFallback;
    mapping(address => bool) notCalled;
    constructor() {}
    fallback() external payable {

        notSawFallback[msg.sender] = true;
        notCalled[msg.value] = true;
    }
    function execute() external {
        if (!notCalled[msg.value]) {
            selfdestruct(payable(addr(msg.value)));
        }
    }
}
