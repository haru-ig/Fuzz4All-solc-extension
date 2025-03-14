pragma solidity ^0.8.0;
contract L74SemanticEquivalent {
    uint[6] x;
    function sneaky() public {
        if (true) {
            x[0] += 3;
        } else {
            x[1] += 2;
        }
    }
}
