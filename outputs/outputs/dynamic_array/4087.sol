pragma solidity ^0.8.0;
contract C {
    uint public[] public data1;
    uint public data2;
    uint[] public data3;
    function f() public {
        data3 = new uint[](data2 + 1);
        for(uint i = 0; i < data1.length; i++){data3[data1[i]] = 0 * i + data2;}
        data2 = data3.length - 1;
        for(uint i = 0; i < data1.length; i++){data1[i] = data3[i];}
    }
}
