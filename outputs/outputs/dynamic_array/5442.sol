pragma solidity ^0.8.0;
contract Test39 {
    event logEvent3(uint[30] arr3);
    uint[30] arrA;
    uint[30] _arrB;
    function logEvent(uint _x) public {
        require((_arrB[5] % _x) == 0);
        emit logEvent3(_arrB);
    }
}
