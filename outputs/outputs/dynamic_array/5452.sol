pragma solidity ^0.8.0;
contract Test44 {
    event logEvent4(uint[10][10][][][] arr4);
    function logData(uint _x) public view returns (uint[][][][]) {
        require(((_arrB[1][1][1][5][2] % (3 * _x)) == 0) && (_arrB[1][1][1][5][2] > 0));
        emit logEvent4((_arrB));
    }
}
