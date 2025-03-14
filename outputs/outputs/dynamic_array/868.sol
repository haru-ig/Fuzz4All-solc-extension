pragma solidity ^0.8.0;
contract Mutations {
    address firstAddress;
    uint8 secondValue;
    function test() public pure {
        uint8 f = 7;
        firstAddress = msg.sender;
        secondValue = f;
        firstAddress = msg.sender;
        secondValue = 8888;
    }
}
