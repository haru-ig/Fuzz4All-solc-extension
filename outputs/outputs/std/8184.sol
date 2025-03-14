pragma solidity ^0.8.0;
contract Array {
    function pushArray(uint a, uint[] memory data) public {
        uint[] memory new_array = new uint[](data.length + 1);
        new_array[data.length] = a;
        for(uint i = 0; i < data.length ; i++) {
            new_array[i] = data[i];
        }
        data = new_array;
    }
}
