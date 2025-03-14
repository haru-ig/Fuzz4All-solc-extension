pragma solidity ^0.8.0;
contract Mutate6 {
    function mutateFromFirst(uint256[2][2] memory array) public view returns (uint256[2]) { return array[0];  }
    function mutateFromSecond(uint256[2][2] memory array) public view returns (uint256) { return array[1][1];}
    function mutateFromThird(uint256[2][2] memory array) public view returns (uint256[2]) { return array[0]; }
    function mutateFromFourth(uint256[2][2] memory array) public view returns (uint256[2]) { return array[0]; }
}
