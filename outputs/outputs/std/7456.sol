pragma solidity ^0.8.0;
contract Mutate4 {
    function mutateFromFirst(uint256[2] memory array) public view returns (uint256) { return array[0]; }
    function mutateFromSecond(uint256[2] memory array) public view returns (uint256) { return array[1]; }
}
