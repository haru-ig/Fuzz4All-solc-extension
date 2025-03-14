pragma solidity ^0.8.0;
contract SemanticalRevert {
    function f() public {
        uint _value;
        _value = foo();
    }
    function foo() public pure returns(uint) {
        revert('foo');
    }
}
