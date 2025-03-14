pragma solidity ^0.8.0;
contract Test16 {
    uint a;
    uint b;
    constructor() {
        assert(a!= b);
    }
    function f() public {
        a = 15;
        b = 10;
        assert(a == a);
        assert(b == b);
    }
}
