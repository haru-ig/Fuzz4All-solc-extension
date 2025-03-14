pragma solidity ^0.8.0;
contract Test43 {
    uint[10] arrA;
    uint[10] _arrB;
    function logEvent() public {
        _arrB = _arrB[1,2,3];
        emit logEvent2(_arrB[0]);
    }
}
