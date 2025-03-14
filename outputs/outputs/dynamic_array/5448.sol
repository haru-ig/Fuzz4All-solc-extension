pragma solidity ^0.8.0;
contract Test40 {
    event logEvent4(uint[10][10][][][] arr4);
    uint[10] arr;
    uint[10][10][][][] _arrB;
    function logEvent(uint _x) public {
        require((_arrB[1][1][1][5][2] % _x) == 0);
        emit logEvent4(_arrB);
    }
}
