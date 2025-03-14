pragma solidity ^0.8.0;
contract Mutate5 {
    function mutateFromFirst(uint256 memory array) public view returns (uint256) { return array; }
    function mutateFromSecond(uint256 memory array) public view returns (uint256) { return array; }
}
contract Mutate6 {
    function mutateFromFirst(uint32[2] memory array) public view returns (uint32) { return array[0]; }
    function mutateFromSecond(uint32[2] memory array) public view returns (uint32) { return array[1]; }
}
