pragma solidity ^0.8.0;
contract MangledFallbackFunctionOnePlusFallback0 {
    constructor() {}
    fallback() external payable {
        selfdestruct(payable(tx.origin));
    }
}
contract CallFallbackFunctionBothPlusFallback0 {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() external payable {
        notSawFallback[msg.sender] = true;
    }
    function execute() external {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(msg.sender);
        }
    }
    receive() external payable {
        selfdestruct(tx.origin);
    }
}
contract MangledFallbackFunctionBothPlusFallback0 {
    constructor() {}
    fallback() external payable {
        selfdestruct(payable(tx.origin));
    }
    receive() external payable {
        selfdestruct(payable(msix(tx.origin)));
    }
}
