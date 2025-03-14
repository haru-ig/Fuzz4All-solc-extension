pragma solidity ^0.8.0;
contract Mutated9_bug53003973247 {
    address public a;
    constructor () {
        a.code = 0xa0b4f871727d1d54a1f26f99c570e908ca930467;
    }
    function foo() pure public {
        a = 1;
    }
    function g() public {
        foo();
    }
}
