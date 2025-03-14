pragma solidity ^0.8.0;
contract SemanticsEquivalence24x {

    uint constant x1 = 1;
    uint constant x2 = 2;

    function bar() public pure returns (uint, uint) {
        uint m;

        assembly {
            m := add(x1, x2)
            mstore(add(x2, 0x20), mload(x1))
            mstore(add(x1, 0x20), m)
            r := m
            s := add(x1, x2)
        }
        return (m, r);
    }
}
