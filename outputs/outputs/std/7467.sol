pragma solidity ^0.8.0;
contract Mutate6 {
    function mutateFromFirst(uint256[2][2] memory array) public view returns (uint256) { return array.min(); }
    function mutateFromSecond(uint256[2][2] memory array) public view returns (uint256) { return array.max(); }
    function mutateFromThird(uint256[2][2] memory array) public view returns (uint256) { return array.sum(); }
    function mutateFromFourth(uint256[2][2] memory array) public view returns (uint256) { return array.set(1, 4); }
}
