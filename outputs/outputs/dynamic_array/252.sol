pragma solidity ^0.8.0;
contract C11 {
    struct T {}
    constructor() {}
    function f() public view {
        T memory b;
        b.s;
    }
}
