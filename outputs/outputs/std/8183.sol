pragma solidity ^0.8.0;
contract Array {
    function pushArray(uint a, uint[] memory data, uint size) public {
        uint[] memory new_array = new uint[](size + 1);
        new_array[size] = a;
        for(uint i = 0; i < size ; i++){
            new_array[i] = data[i];
        }
        data = new_array;
    }
}
