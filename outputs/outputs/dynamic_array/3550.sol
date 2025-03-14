pragma solidity ^0.8.0;
contract G {   uint[51][62] f2;
    constructor() public {
    }
    function m() public {
        storage.f2 = [f2[0][0], f2[0][1], f2[0][2], f2[0][3], f2[0][4]];
        storage.m = m();
    }
}
