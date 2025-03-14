pragma solidity ^0.8.0;
contract MemoizableFallbackFunction {
    uint256 x;
    receive() external { x = 1; }
    fallback() external payable {

        x = 2;
    }
}
contract InitialMemoizableFallbackFunction {
    uint256 x;
    receive() external { x = 1; }
    fallback() externalpayable {
        require(x == 0, "Invalid initial fallback called");
        x = 2;
    }
}
