pragma solidity ^0.8.0;
contract SemanticsEquivalence24xCrossEquivalence2 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        set(mstore, 0x20, mload, 0x10);
    }

    function set(address t, uint k, address a1, address a2) internal {
        t(k); a1(k, 1); set(t, k+1, a2, a2);
    }
}
