pragma solidity ^0.8.0;
contract FallbackMutator {
    function Mut(uint256 a) external {
        require(a % 15!= 50, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint256 a);
}
