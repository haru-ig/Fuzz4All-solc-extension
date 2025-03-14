pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback6 {
    function executeThis() external fallback {
        selfdestruct(msg.sender);
    }

    fallback () external payable;
    receive () external payable {}
}
