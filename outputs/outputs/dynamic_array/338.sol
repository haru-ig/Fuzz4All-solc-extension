pragma solidity ^0.8.0;
contract W{
    uint[] public arr;
    function f() public {
        uint data_size = 200;
        uint[] memory mem = new uint[](data_size);
        for (uint i = 0; i < data_size; i++){
            mem[i] = i + 1;
        }
        arr.push(0);
        arr.push(1);
        bool ok = arr.length == 2;
    }
}
