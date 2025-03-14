pragma solidity ^0.8.0;
contract SemanticsEquivalence25x1 {
    uint public constant x1 = 1;
    uint public constant x2 = 2;
    function () public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 0x20), 0x0000000000000000000000000000000)
            mstore(add(r, 0x20), 0x000000000000000000000000000000000000)
        }
    }
    function bar() public pure {
        assembly {
            let r := add(x2, x1)
            mstore(add(x1, 0x20), r)
        }
    }
}
