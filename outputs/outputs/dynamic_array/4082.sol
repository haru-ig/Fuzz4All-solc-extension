pragma solidity ^0.8.0;
contract C {
    uint[] data;
    function f() public {
        data[data.length] = 1;
        data[data.length + 1] = 2;
        for(uint i = 0; i < 20000; i++){data[i] = 10 * i;}
        for(uint i = 1; i < 20000; i++){data[i + 1] = 10 * i + 1;}
        data[data.length - 1] = 1 + data.length;
    }
}
