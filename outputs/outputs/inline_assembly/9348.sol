pragma solidity ^0.8.0;
contract C {
    function f() public pure {}
}
contract C {
    uint x = 0;
    uint y = 5;
    function d1() public pure returns (uint) {
         C c;
          assembly {
            x := g()
            g := r
            r := c.f()
            c.f := g
            g := 1
            d := g
            g := c.g()
            g := d
            g := a
        }
    }
}
