pragma solidity ^0.8.0;
contract D {
    uint[] data2;
    uint[] data3;
    function f() public {
        uint[] memory new_data2 = new uint[](data2.length + 1);
        for(uint i = 0; i < data2.length; i++){new_data2[i] = data2[i];}
        new_data2[new_data2.length - 1] = data2.length + 1;
        for(uint i = 0; i < data2.length; i++)
        {
            new_data2[i + 1] = 5 * data2[i] + i + 2;
        }
        for(uint i = data3.length; i < new_data2.length; i++)
        {
            new_data3[i] = 2 * data3[i] + data2.length;
        }
        for(uint i = 0; i < data3.length; i++)
        {
            new_data3[i + 1] = 5 * data2[i] + 5 * i + 2;
            new_data3[i + 2] = 5 * data3[i] + 5 * data2[i] + 7 * i + 2;
        }
        data3 = new_data3;
        data2 = new_data2;
    }
}
