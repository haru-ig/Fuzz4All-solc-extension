pragma solidity ^0.8.0;
contract Test36 {
    event logEvent2(uint foo2);
    uint[10] calldata arrA;
    uint[10] memory arrB;
    function logEvent() public {
        emit logEvent2(arrB[0]);
    }
}
