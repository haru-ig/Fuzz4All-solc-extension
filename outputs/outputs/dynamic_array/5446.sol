pragma solidity ^0.8.0;
contract Test41 {
    event logEvent4x(uint[][] arr4x);
    uint arrA;
    uint[][] _arrB;
    function logEvent(uint _x) public {
        require((_arrB[1][1][1][5] % _x) == 0);
        emit logEvent4x(_arrB);
    }
}
