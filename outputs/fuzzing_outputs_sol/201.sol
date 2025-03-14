pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback(uint256) external payable {}
    function execute() external {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(payable(msg.sender));
        }
    }
}


pragma solidity ^0.8.0;
