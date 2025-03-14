pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    function f() public {
        data2 = new uint[](data2.length + 1);
        data2[data2.length - 1] = 1;
        for(uint i = 0; i < data2.length; i++){data2[i] = 10 * i;}
        for(uint i = 0; i < data2.length; i++){data2[i + 1] = 10 * i + 1;}
        data2[data2.length - 2] = 1 + data2.length;
    }
}
