pragma solidity ^0.8.0;
contract Mutate5 {
    function mutateFromFirst(uint256[2] memory a) public view returns (uint256) { return a.min; }
    function mutateFromSecond(uint256[2] memory a) public view returns (uint256) { return a.max; }
}
