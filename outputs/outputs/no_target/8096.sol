pragma solidity ^0.8.0;
contract Mutated {
    function mutate()
        public
        view
        restricted
        returns (uint, uint) {
        uint x = 13;
        uint y = 9;
        uint z = x;
        uint q = 0x1b;
        uint w = 0;
        if (y < x) { w -= 1; y = x; x = y; z += (0x10 * w); w -= x; }
        else { w += 1; x = y; y = 0; z + (0x0a * w) / (0x10 * (z - y)); y = ~0; }
        return (x, y);
    }
    function revert(uint)
        public
        view
        locked
        returns ( ) {
        ( ) ;
    }
    function error()
        public
        view
        locked
        returns ( ) {
        revert(10 + 7);
    }
    function invalid(uint)
        public
        view
        locked
        returns ( ) {
        return ( );
    }
}
