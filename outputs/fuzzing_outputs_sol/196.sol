pragma solidity ^0.8.0;
library CallFallbackFunctionOnePlusFallback1 {
    modifier Check {
        if (msg.value == 50 ether) {
            revert();
        } else if (msg.value == 80 ether) {
            _;
        } else {
            super.Check();
        }
    }
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() external Check payable {
        notSawFallback[msg.sender] = true;
    }
    function execute() external {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(payable(msg.sender));
        }
    }
}
