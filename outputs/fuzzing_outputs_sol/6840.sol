pragma solidity ^0.8.0;
contract Fallback {
    uint counter;
    uint value;
    receive() payable external {
        emit SomeEvent(counter, value);
        counter = 2;
    }
}
