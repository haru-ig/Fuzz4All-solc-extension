pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x = 1;
    function bar() public pure {
        x = x + 1;
        assembly { mstore(x, mload(x)) }
    }
}
