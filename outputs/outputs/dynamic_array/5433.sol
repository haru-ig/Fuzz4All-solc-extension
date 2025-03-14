pragma solidity ^0.8.0;
contract Test37 {
    event logEvent3(uint[10] arr3);
    uint[10] arrA;
    uint[10] _arrB;
    function logEvent() public {
        emit logEvent3(_arrB);
    }
}


pragma solidity ^0.8.14;
