pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence2 {
    uint public _x = 1;
    function bar() public pure {
        _x = _x - 1;
    }
}
