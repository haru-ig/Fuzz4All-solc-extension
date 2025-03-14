pragma solidity ^0.8.0;
contract MutantFallbackFunction {
    function mutantFallbackFunction() public pure {
        if (msg.data.length == 0) {
            selfdestruct(msg.sender);
        }
    }
    function mutantFallbackFunctionFallback() public pure {
        selfdestruct(msg.sender);
    }
}
