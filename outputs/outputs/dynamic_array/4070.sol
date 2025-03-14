pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint[] public data2;
    uint[] public data3;
    function f() public {
        uint[] memory new_data1;
        if (data1.length == data3.length + 1){
            for (uint i = 0; i <= data1.length - 1; i++){
                new_data1[i] = 10 * i;
            }
        } else {
            for (uint i = 0; i <= data1.length - 1; i++){
                new_data1[i] = 10 * i;
                new_data1[i + 1] = 20 * i;
            }
        }
        data1 = data2;
        data2 = new_data1;
        new_data2 = new uint[](data1.length + 1);
        new_data2[new_data2.length - 1] = 1;
        for(uint i = data1.length - 1; i > 0; i--){
            new_data2[i] = data1[i - 1] + 2 * i;
        }
        for(uint i = data1.length - 1; i > 0; i--){
            new_data2[i + 1] = data1[i  - 1] + 10 * i - 2 * i;
        }
        for (uint i = data2.length; i < new
