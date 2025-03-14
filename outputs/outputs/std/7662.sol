pragma solidity ^0.8.0;
contract GoodCase16 {
    uint8[15] m;
    constructor () { for (uint8 i = 0; i < 15; i++) m[i] = 100; }
    function f() pure {
        uint8 v = m[0];
    }
    function g() {
        uint8 v = m[1];
    }
}

pragma solidity ^0.8.0;
contract GoodCase24 {
    uint256[15] m;
    constructor () { for (uint8 i = 0; i < 15; i++) m[i] = 100; }
    function f() pure {
        uint256 v = m[0];
    }
    function g() {
        uint256 v = m[1];
    }
}

pragma solidity ^0.8.0;
contract GoodCase34 {
    uint16[35] m;
    constructor () { for (uint8 i = 0; i < 15; i++) m[i] = 100; }
    function f() pure {
        uint v = m[0];
    }
    function g() {
        uint v = m[1];
    }
    function h() {
        uint v = m[34];
    }
}

pragma solidity ^0.8.0;
contract GoodCase14 {
    bytes32 f(uint256 seed);
}

pragma solidity ^0.8.0;
contract GoodCase15 {
    bytes32 f(uint8[1] memory, bytes32 memory, uint256 memory);
}

pragma solidity ^0.8.0;
contract GoodCase19 {
    modifier valid(uint256 x) { if (!((x >= 1 && x <= 1000))) revert("x must be greater than 0 and less than or equal to 1000"); _; }
    modifier within(uint256 x, uint256 y, uint256 z) { invalid x; invalid y; invalid z; if ((x >= y && x <= z) || (y >= z && y <= x)) revert("x must belong to the interval [y,z]"); _; }
    modifier within(uint256 x, uint256 y) { invalid x; invalid y; revert("x must belong to the interval [y,x]", "within", "_", ""); x <= y; _; }
}

pragma solidity ^0.8.0;
contract GoodCase20 {
    modifier only(address addr) { if (msg.sender!= addr) revert("Only address"); _; }
    modifier valid(uint256 x) {
