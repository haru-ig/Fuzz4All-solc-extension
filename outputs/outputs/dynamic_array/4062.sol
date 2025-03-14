pragma solidity ^0.8.0;
contract C {
    uint[] memory data;

    function f() public {
        uint[] memory new_data = new uint[](data.length + 3);
        for(uint i = 0; i < data.length; i++){new_data[i] = data[i];}
        new_data[new_data.length - 1] = 1;
        for(uint i = 0; i < data.length; i++){new_data[i + 1] = 10 * i;}
        for(uint i = 0; i < data.length; i++){new_data[i + 2] = data[i] - data[i + 1];}
        data.copyToArray(0, new_data);
    }
}
