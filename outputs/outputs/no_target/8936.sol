pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v3 {
    function test (uint256 a) public {
        (uint256 b, ) = a;
    }
}
