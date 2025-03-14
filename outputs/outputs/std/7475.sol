pragma solidity ^0.8.0;
contract Mutate15 {
    function mutateFromFirst(uint256[1][] memory array) public pure returns (uint256) { return array[0][0];}
    function mutateFromSecond(uint256[1][] memory array) public view returns (uint256) { return array[0][0]; }
    function mutateFromThird(uint256[1][] memory array) private view returns (uint256) { return (array[0][0]); }
    function mutateFromFourth(uint256[1][] memory array) public pure returns (uint256) { return array[0][1];}
    function main(uint256) private pure returns (uint256) { return 1; }
}
