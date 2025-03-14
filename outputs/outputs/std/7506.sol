pragma solidity ^0.8.0;
contract Mutate3 {
    uint[] memory array;
    function get() public pure returns (uint) {
        return array[2];
    }
    function change(uint256 newValue) public {
        array[0] = newValue;
    }
}
