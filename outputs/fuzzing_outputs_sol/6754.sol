pragma solidity ^0.8.0;
contract FallbackMutatorMut {
    function Mut(uint256 a) external {
        uint256 b = a * 15;
        require(b % 15!= 50, "b is not a mut");
        EmitMutLog(b);
    }
    event MutLog(uint256 a);
    function EmitMutLog(uint256 a) {
        emit MutLog(a);
    }
}
