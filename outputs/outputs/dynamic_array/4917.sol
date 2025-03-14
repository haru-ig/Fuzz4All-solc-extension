pragma solidity ^0.8.0;
contract Test66 {
    struct Estructura {
        uint x;
    }
    function foo(Estructura[] memory x) public {
        Estructura[] memory t;
        uint[64] memory y;
        x[0].x = 64;
    }
}
