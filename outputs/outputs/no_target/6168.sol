pragma solidity ^0.8.0;
contract Module {
    uint result;
    Module mod = new Module();
    function foo() public {
        result = mod.foo();
    }
}
