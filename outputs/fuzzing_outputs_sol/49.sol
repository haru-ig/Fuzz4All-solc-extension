pragma solidity ^0.8.0;
contract CallerFallbackFunction2 {
    uint256 x;
    Receive() external payable { }
    fallback() external payable { x = 1; }
}
contract InitialCaller3 {
    uint256 x;
    Receive() external payable { x = 1; }
}
contract SecondCaller3 {
    uint256 x;
    Receive() external payable { x = 1; }
}
