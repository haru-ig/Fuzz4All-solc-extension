pragma solidity ^0.8.0;
contract InitialCaller3 {
    uint256 x;
    receive() external payable { x = 1; }
}
contract SecondCaller3 {
    uint256 x;
    receive() external payable { x = 1; }
}
