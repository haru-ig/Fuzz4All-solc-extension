pragma solidity ^0.8.0;
contract G {
   uint[51][70] b2;
    constructor() public {
    }
    function m() public {
        G.m();
    }
    function n() public {
        b2[0][0] = 0;
        G.m();
        b2[0][2] = 0;
        G.m();
    }
}

pragma solidity ^0.8.0;
contract G {
   uint[51][85] b2;
    constructor() public {
    }
    function m() public {
        G.m();
        G.m();
        b2[0][0] = 0;
        b2[0][1] = 0;
        G.m();
        G.m();
        G.m();
    }
}
