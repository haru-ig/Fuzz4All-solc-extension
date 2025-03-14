pragma solidity ^0.8.0;
contract Test39 {
    event logEvent(uint64[3] arr6);
    uint64[3] arrA;
    uint64[3] _arrB;
    function logEvent2(uint _x) public {
        require((_arrA[1] % _x) == 0);
        emit logEvent(_arrB);
    }
}
