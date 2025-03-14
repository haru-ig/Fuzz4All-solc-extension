pragma solidity ^0.8.0;
contract Mutate12 {
    function mutateFromFirst(uint256[2][2] memory array) public view returns (uint256) { return 1;}
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return 1; }
    function mutateFromThird(uint256[2][2] memory array) public pure returns (uint256) { return 1; }
    function mutateFromFourth(uint256[2][2] memory array) public pure returns (uint256) { return 1; }
    function main(uint256) private pure returns (uint256) { return 1; }
}
