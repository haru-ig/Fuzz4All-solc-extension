pragma solidity ^0.8.0;
contract Modifier_Example {
    function foo1() public pure {
        return 1;
    }
    function foo2() public pure {
        return 2;
    }
    function bar() public pure {
        _;
    }
}
