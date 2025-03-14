pragma solidity ^0.8.0;
contract Bar {
    function foo1() public pure {
        uint8 y;
        (y,) = (1);
        (uint8 z,) = (uint8(0));
    }

    function foo2() public pure { (uint8 y,) = (1,); }

    function foo3() public pure { (uint8 y) = 0u; }
    function foo4() public pure {
        uint8 y;
        uint8 z;
        (y, z) = (1u, 0u);
    }
}
