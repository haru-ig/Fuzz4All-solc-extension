pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v22_Semantics {
    uint256 public _check;
    function check() view public returns (uint256) {
        _check;
        return 0;
    }
}
