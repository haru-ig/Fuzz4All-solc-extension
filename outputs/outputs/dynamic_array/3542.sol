pragma solidity ^0.8.0;
contract G {
    uint[51][62] b2;

    function m() public {
        G.m();
        b2[0][0] = 0;
        b2[0][1] = 0;
        b2[51][49] = 0;
        G.m();
        G.m();
    }
}
