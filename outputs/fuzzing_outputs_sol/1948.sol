pragma solidity ^0.8.0;
contract NotFallback {
    uint myNumber = 3;
    function receive() payable {
        return myNumber;
    }
}
