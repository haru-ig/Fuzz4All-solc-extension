pragma solidity ^0.8.0;
contract TestCallerFallback {
    uint public constant value = 9;
    receive() external {  require(value > 0); }
}
