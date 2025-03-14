pragma solidity ^0.8.0;
contract Test37 {
    event logEvent2(uint foo2);
    uint[10] arrA;
    uint[10] _arrB;
    function logEvent() public {
        emit logEvent2(_arrB[100]);
    }
}
