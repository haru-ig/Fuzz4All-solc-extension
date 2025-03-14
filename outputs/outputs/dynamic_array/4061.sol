pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    function f() public {
        uint[] memory new_data2 = new uint[](data2.length + 1);
        uint[] memory new_data3 = new uint[](data3.length + 2);
        new_data2[new_data2.length - 1] = 1;
        for(uint i = 0; i < data2.length; i++){new_data2[i] = 10 * i;}
        for(uint i = 0; i < data2.length; i++){new_data2[i + 1] = 10 * i + 1;}
        for(uint i = data3.length; i < new_data2.length; i++){new_data3[i] = 2 * i + 1;}
        new_data3[new_data3.length - 1] = 1 + data2.length;
        for(uint i = 0; i < data3.length; i++){new_data3[i + 1] = 2 * i + 2;}
        new_data3[new_data3.length - 2] = 1 + data2.length;
        data2 = new_data2;
    }
}
