pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    function f() public {
        uint[] memory new_data2 = new uint[](data2.length + 1);
        uint[] memory new_data3 = new uint[](data3.length + 2);
        for(uint i = 0; i < new_data2.length - 2; i++){ new_data2[i] = 1;}
        for(uint i = 0; i < new_data2.length - 2; i++){ new_data2[i + 1] = 10 * i;}
        for(uint i = 0; i < new_data2.length - 1; i++){ new_data2[i + 2] = 2 * i;}
        for(uint i = 0; i < data3.length; i++){ new_data3[i] = 2 * i + 1;}
        for(uint i = 0; i < data3.length; i++){ new_data3[i + 1] = 2 * i + 2;}
        data2 = new_data2;
        data3 = new_data3;
    }
}
