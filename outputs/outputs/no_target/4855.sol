pragma solidity ^0.8.0;
contract C {
    function f() public pure { B.f(); }
}

pragma solidity ^0.8.0;
contract D {
    function f() internal pure { C.f(); }
}

import "../D.sol";
contract E {
    function g() public pure { D.f(); }
}
contract F {
    constructor() public { require (address(this) == 0x00); }
    fallback () external payable { require (0xffffffff < 0xffffffff); }
}
contract G {
    uint x;
    constructor() public { x = 11111111111; }
    function f() public {
        require (x >= 11111111111);
    }
}
contract H {
    function g() public pure { G.f(); }
}
