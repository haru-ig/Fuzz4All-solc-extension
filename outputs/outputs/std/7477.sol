pragma solidity ^0.8.0;
contract Mutate15 {
    function mutateFromFirst(uint256[2][3] memory array) public view returns (uint256) { return array[0][0];}
    function mutateFromSecond(uint256[2][3] memory array) public pure returns (uint256) { return (array[0][1]);}
    function mutateFromThird(uint256[2][3] memory array) public pure returns (uint256) { return (array[0][2]);}
}
