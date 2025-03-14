pragma solidity ^0.8.0;
contract G {
   uint[51][62] b2;
   constructor() public {
    }
    function m() public {
        b2[0][0] = 0;

        m();
    }
   function f(uint v) public returns (uint) {
        b2[0][0] = v;
        m();
        return v;
    }
}
