pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    function f() public {
        data2[data2.length] = 1;
        data2[data2.length + 1] = 2;
        for(uint i = 0; i < data2.length; i++){data2[i] = 10 * i;}
        for(uint i = 1; i < data2.length; i++){data2[i + 1] = 10 * i + 1;}
        data2[data2.length - 1] = 1 + data2.length;
    }
}
