pragma solidity ^0.8.0;
contract Test41 {
    event logEvent4(uint[5][10][][] arr4);
    uint[5] arrA;
    uint[10][5][10][][] _arrB;
    function logEvent(uint _x) public {
        require((_arrB[1][1][3][5] % _x) == 0);
        emit logEvent4(_arrB);
    }
}
