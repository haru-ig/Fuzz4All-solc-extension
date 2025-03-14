pragma solidity ^0.8.0;
contract Siblings {
    function x(uint x) public pure {
        uint y;
        assembly {
            x := x*0x11234
            y := x
        }
        assert(x/x == 0x40000000);
        assert(y == 0x80000000);
    }
}
