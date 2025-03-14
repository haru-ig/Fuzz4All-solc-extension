pragma solidity ^0.8.0;
contract MutatingContract {
    uint256[] memory array;
    uint256[] memory mutated_array;
    constructor() {
        mutation();
    }
    function incArray(uint256 x) public {
        if (x == 0) {
            throw;
        } else {
            return;
        }
        array.push(x);
        uint256 new_value = get_value(array);
        require(new_value == my_value);
    }
    function mutation() public {
        uint256 index = array.push(0x05550);
        uint256 new_value = my_value + 1;
        require(get_value(array) == new_value);
    }
    function get_value(uint256[] memory array) public pure returns (uint256) {
        return array[0];
    }
}
