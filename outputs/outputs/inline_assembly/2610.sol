pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
        constructor() public {
        x = 3;
        x = x - 1;
        x = x + 1;
    }
    function m() public {
    z = 2 * z + x;
    }
}
contract E {
    uint public e;
    function f() public { e = 5; }
}
