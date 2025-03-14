pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x = 1;

    function bar() public pure {
        assembly { mstore(add(x, 1), mload(sub(x, 1))) }
    }
}
