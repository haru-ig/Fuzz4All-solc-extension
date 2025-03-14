pragma solidity ^0.8.0;
contract Mutate14 {
    function mutateFromFirst(uint256[2][2][2] memory array) public view returns(uint256,uint256) { return (array[0][0][0],array[0][1][1]); }
    function mutateFromSecond(uint256[2][2][2] memory array) public view returns(uint256,uint256) { return (array[1][0][0],array[1][1][1]); }
    function mutateFromThird(uint256[2][2][2] memory array) public view returns (uint256,uint256) { return (array[0][0][1],array[0][1][1]); }
    function mutateFromFourth(uint256[2][2][2] memory array) public view returns (uint256,uint256) { return (array[1][0][1],array[1][1][1]);}
    function main(uint256) private pure returns (uint256,uint256) { return (1,1); }
}
