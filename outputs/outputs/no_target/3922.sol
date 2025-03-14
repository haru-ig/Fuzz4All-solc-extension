pragma solidity ^0.8.0;
 interface I {
    function f() public pure;
}
contract C {
    I private x;
    constructor () public {
        x = I(uint160(0x7FFFFFFFFFFFFFFF));
        x.f();
    }
}
