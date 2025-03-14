pragma solidity ^0.8.0;
contract Test39 {
    event logEvent3(uint[5] arr3);
    uint[5] arrA;
    uint[5] _arrB;
    function logEvent(uint _x) public {
        require(_x < 33);
        emit logEvent3(_arrB);
        require((_x % 5) == 0);
    }
}
