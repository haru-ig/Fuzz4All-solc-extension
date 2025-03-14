pragma solidity ^0.8.0;
contract Array {
    function pushArray(uint a, uint[] memory data) public {
        uint length = data.length;
        uint[] memory new_array = new uint[](length + 1);
        new_array[length] = a;
        for (uint i = 0; i < length; i++) {
            new_array[i] = data[i];
        }
        data = new_array;
    }
}
