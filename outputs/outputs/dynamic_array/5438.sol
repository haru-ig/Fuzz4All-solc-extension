pragma solidity ^0.8.0;
contract Test38 {
    event logEvent3(uint[10] arr3);
    uint[10] arrA;
    uint[10] _arrB;
    function logEvent(uint _x) public {
        require((_arrB[5] % _x) == 0);
        emit logEvent3(_arrB);
    }
}
