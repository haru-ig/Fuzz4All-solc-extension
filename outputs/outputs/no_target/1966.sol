pragma solidity ^0.8.0;
contract NoRevertMutatedSematicSafe {
    uint x;
    function f() public {
        x = mutatedSemanticSafe(x, 2);
    }
}
