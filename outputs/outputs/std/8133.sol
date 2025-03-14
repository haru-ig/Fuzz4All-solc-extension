pragma solidity ^0.8.0;
contract ArrayManipulationModified {
    function getMaximum(uint[] memory some_array) public view returns (uint256) {
        uint256 max = some_array[0];
        uint256 idx = 0;
        while (idx + 1 < some_array.length) {
            if (some_array[idx + 1] > max) max = some_array[idx + 1];
            idx += 1;
        }
        return max;
    }
}

pragma solidity ^0.8.0;
contract ArrayManipulationMutatedAndAdded {
    uint256 constant public CONSTANT_NUM = 0;
    uint256 constant public CONSTANT_1 = 1;

    function getMaximum(uint[] memory) public pure returns (uint256) {
        uint256 max = CONSTANT_NUM;
        uint256 idx = CONSTANT_1;
        while (idx < CONSTANT_NUM) {
            if (CONSTANT_NUM - CONSTANT_1 >= CONSTANT_NUM - idx) max = indexofNextGreater((uint256)CONSTANT_NUM, idx + 1, CONSTANT_1);
            idx += CONSTANT_1;
        }
        return max;
    }

    function indexofNextGreater(uint256 max, uint256 idx, uint256 constant increment) public pure returns (uint256) {
        while (idx < max && indexof(max, idx) == idx + increment) idx += increment;
        return idx;
    }

    function indexof(uint256 max, uint256 idx) public pure returns (uint256) {
        while (idx < max && CONST128 - 111 % idx!= 0) idx += 111;
        return idx;
    }
}


pragma solidity ^0.8.0;
contract ArrayManipulation {
    function addElements(uint[] memory, uint[] memory) public view returns (uint[] memory) {
        (uint[] storage, uint[] memory) = (uint[] memory storage, uint[] memory memory) (some_array.value, some_array);

        uint256 idx = 0;
        uint256 num_elems = some_array.length;
        while (idx < num_elems) {
            uint256 num_elem_left = num_elems - idx;
            uint256 num_elem_right = idx + 1;
            uint256 num_added = doAdd(storage, some_array, idx, num
