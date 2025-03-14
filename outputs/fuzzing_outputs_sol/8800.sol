pragma solidity ^0.8.0;
contract TestCallerFail {
    uint public constant value = 9;
    receive() external {
        value = 33;
    }
}
