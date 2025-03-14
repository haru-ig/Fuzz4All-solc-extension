pragma solidity ^0.8.0;
contract Array_Mutated {
    function set(uint256 i, uint256 val) public {

        uint256[] memory old_array = array;
        array[i] = val;

        require(old_array.length[100] == 3);
    }
    uint256[] array;
}
