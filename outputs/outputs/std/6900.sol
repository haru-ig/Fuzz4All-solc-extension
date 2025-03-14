pragma solidity ^0.8.0;
contract Mutated_FunctionCaller1 {
    function modifyArray(uint[] memory _new_array) public {
        uint[] memory new_array = _new_array;
    }
}
contract Mutated_FunctionCaller2 {
    function modifyArray(uint[] memory _new_array) public {
        uint i;
        uint[] storage array = _new_array;
        for (i; i < _new_array.length; i++) {
            array[i]--;
        }
    }
}
