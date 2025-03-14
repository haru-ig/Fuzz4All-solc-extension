pragma solidity ^0.8.0;
contract FallbackMutator {
    function Mut(uint a) external {
        require(a % 70 > 0, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint a);
}
