pragma solidity ^0.8.0;
contract CallerFallbackFunction {
    uint256 x;
    receive() external payable { }
    fallback() external payable { x = 1; }
}
contract InitialCaller2 {
    uint256 x;
    receive() external payable { x = 1; }
}
contract SecondCaller2 {
    uint256 x;
    receive() external payable { x = 1; }
}
