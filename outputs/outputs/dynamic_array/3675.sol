pragma solidity ^0.8.0;
contract H {
    address[] public a;
    constructor() {}
    function f() public {
        a[0].f().f();
    }
}
