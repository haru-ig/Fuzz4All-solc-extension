pragma solidity ^0.8.0;
contract Mutate3 {
    function mutateFrom1toLast(uint256[] memory array) public view returns (uint256) { return array[array.length - 1]; }
}
