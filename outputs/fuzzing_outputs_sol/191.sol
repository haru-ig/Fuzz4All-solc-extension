pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback3 {
    function executeThis() public pure {
        selfdestruct(address(this));
    }
}
