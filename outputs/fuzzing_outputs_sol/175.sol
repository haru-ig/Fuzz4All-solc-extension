pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback2 {
    fallback() public {
    }
}


pragma solidity ^0.8.0;
contract CallFallbackFunctionFivePlusReceive {
    receive() external payable {}
}
