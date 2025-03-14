pragma solidity ^0.8.0;
contract H {
   uint[51][42] b;
    constructor() public {
    }
    function m() public {
        b[0][0] = 0;
        b[0][1] = 0;
        b[0][2] = 0;
        b[0][3] = 0;
        m();
    }
}
