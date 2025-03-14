pragma solidity ^0.8.0;
contract SimpleStore {}
abstract contract ISimpleStore {
    function f() public view virtual returns (uint8);
}
contract Test {
    constructor(uint8 v) {
    }
    function foo() public {
        uint8 a = ISimpleStore(new SimpleStore()).f();
    }
}
