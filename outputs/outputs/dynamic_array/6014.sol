pragma solidity ^0.8.0;
contract Test45679 {
    constructor () public {}
    function f() returns (uint) {
        return data[0];
    }
    uint[] private data = [  1, 2, 3, 4];
    uint[8] private arr = [  1,  2, 3,  4, 5, 6, 7, 8 ];
    function g() returns (uint) {
        uint result = data[0];
        if (data.length == 0) {
            return result;
        }
    }
    fallback () public {
        delete data[0];
        if (data.length == 0) {
            delete data[0];
        } else {
            delete data[data.length - 1];
        }
    }
}

pragma solidity ^0.8.0;
contract Test1 {
    uint[12] private data1 = [  1, 2,  3,   4,  5,  6, 7, 8, 9, 10, 11, 12, 13 ];
    uint[5] private data2 = [  1,   5,  10, 15, 20 ];
}
contract Test2 {
    uint[16] private data2;
    function f() public returns (uint) {
        return data2[2];
    }
    function g() public returns (uint) {
        return data2.length;
    }


    function h() internal view {
        uint[16][4] memory nested;
        nested[0] = data2;
    }


    uint[16] private data3 [16];
}
