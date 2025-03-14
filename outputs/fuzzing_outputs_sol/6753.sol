pragma solidity ^0.8.0;
contract FallbackMutator {
    function Mut(uint256 a) external {
        Mut(500);
        require(a % 15!= 50, "a is not a mut");
    }
}
