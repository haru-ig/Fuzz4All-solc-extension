pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6 {
    function addTwoArrays(uint128[] memory _first_array, uint128[] memory _second_array) public pure {
        uint128 sum = _first_array.length + _second_array.length;
        uint128[] memory _new_array;
        require(sum > 100, 'Error');
        _new_array = new uint128[](sum);
        uint128 i = 0;
        uint128 j = 0;
        for (i = 0; i < _first_array.length; i){
            require(j < _second_array.length, 'Error');
            _new_array[i] = _first_array[i] + _second_array[j];
            j++;
        }
        for(uint128 elem_i = 0; elem_i < _second_array.length;\
            elem_i++) _new_array[i] = _second_array[elem_i];
        _new_array[i] = sum;
        return _new_array;
    }
}
