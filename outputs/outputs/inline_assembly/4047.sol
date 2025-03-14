pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), mload(add(x2, 1)))
            mstore(add(add(x1, 1), 1), mload(r))
        }
    }
}
