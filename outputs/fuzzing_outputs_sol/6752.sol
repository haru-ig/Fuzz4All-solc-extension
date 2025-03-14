pragma solidity ^0.8.0;
contract FallbackMutator {
    fallback function Mut(uint256 a) public {
        require(a % 15!= 45, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint256 a);
}
