pragma solidity ^0.8.0;
contract SemanticsEquivalence15x {
    uint constant x1 = 100;
    uint constant x2 = 200;
    function bar() public pure {
        assembly {
            let r := add(x1, x2)
            mstore(add(x2, 0x20), mload(x1))
            mstore(add(x1, 0x20), x1)
            mstore(add(x1, 0x20), r)
        }
    }
}
