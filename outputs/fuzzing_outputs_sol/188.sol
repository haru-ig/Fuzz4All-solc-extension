pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback4 {
    function executeThis() external payable {
        selfdestruct(payable(msg.sender));
    }
}
