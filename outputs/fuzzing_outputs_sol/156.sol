pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallbackFunction {
    fallback () external payable {
        require(block.timestamp >= 471200, "Timestamp too low for fallback");
    }
    receive () payable external {}
}
