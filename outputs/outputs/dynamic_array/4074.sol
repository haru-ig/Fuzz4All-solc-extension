pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    uint[] public data3;
    function f() public {
        uint i = data2.length;
        data2.push(0);
        data3.push(0);
        while(++i < data2.length){
            uint[] memory new_data2 = new uint[](i + 1);
            uint[] memory new_data3 = new uint[](i + 2);
            new_data2[i] = 1;
            for(uint j = 0; j < i; j++){new_data2[j] = 10 * j;}
            for(uint j = 0; j < i; j++){new_data2[i + j] = 10 * j + j;}
            for(uint j = i + 1; j < new_data2.length; j++){new_data3[j] = 2 * j + j + 1;}
            new_data3[i] = 1;
            for(uint j = 0; j < i + 1; j++){new_data3[i + j] = 2 * j + j + 1;}
            new_data3[i + 2] = 1 + i + 1;
            data2 = new_data2;
        }
        data3 = new_data3;
    }
}
