pragma solidity ^0.8.0;
contract FallbackFunction {
    uint256 x;
    receive() external payable { }
    fallback() external payable { x = 1; }
}
contract InitialFallback {
    uint256 x;
    receive() external payable { x = 1; }
}
contract SecondFallback {
    uint256 x;
    receive() external payable { x = 1; }
}
