pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x = 1;
    function bar() public pure {
        x++;
        assembly { mstore(add(x, 1), mload(add(x, 1))) }
    }
}
