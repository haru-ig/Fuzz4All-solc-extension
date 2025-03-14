pragma solidity ^0.8.0;
contract Mutate3 {
    function mutateFromFirst(uint256[] memory array) public view returns (uint256) { return array[0]; }
    function mutateFromSecond(uint256[] memory array) public view returns (uint256) { return array[1]; }
    function mutateFromLast(uint256[] memory array) public view returns (uint256) { return array[array.length - 1]; }
    function mutateFromOneElement(uint256[] memory array) public view returns (uint256) { return array[0]; }
}
