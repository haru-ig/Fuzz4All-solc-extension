pragma solidity ^0.8.0;
contract OptimizelyExample114ReentrancyExploit {
    uint public x;
    function bug() public returns (uint) {
        x = x + 1;
        return x;
    }
}
