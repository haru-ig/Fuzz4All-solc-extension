pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_0_O {
    receive() external payable {
        selfdestruct(address(12345));
    }
}

pragma solidity ^0.8.0;
