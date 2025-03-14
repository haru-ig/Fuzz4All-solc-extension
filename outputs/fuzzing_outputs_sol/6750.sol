pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint256 a, uint256 b, uint256 c) external {
        require(c, "Bad b");
        emit MutLog(a, b);
    }
    event MutLog(uint256 a, uint256 b);
}
