pragma solidity ^0.8.0;
contract Mutate3 {
    function mutateFromFirst(uint256[2][1] memory array) public view returns (uint256) { return array[0][0]; }
    function mutateFromSecond(uint256[2][1] memory array) public view returns (uint256) { return array[1][0]; }
    function mutateFromThird(uint256[2][1] memory array) public view returns (uint256) { return array[0][1]; }
}
