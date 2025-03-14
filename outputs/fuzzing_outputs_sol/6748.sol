pragma solidity ^0.8.0;
contract FallbackMutator {
    function Mut(uint128 a) external nonpayable {
        require(a % 15!= 50, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint128 a);
}
