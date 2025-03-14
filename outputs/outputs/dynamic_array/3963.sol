pragma solidity ^0.8.0;
contract C {
    uint x[];
    uint y();
    uint z;
    uint[] x = new uint[](10);
    uint y = new uint[](10);
    uint z = new uint[](10+1);
    constructor () {
        x[1] = 1;
        x[2] = 1;
        x[3] = 1;
        y[1] = 2;
        y[2] = 2;
        y[3] = 2;
        z = new uint[](10);
    }
}



pragma solidity ^0.8.5;
contract C {
    function f() public pure virtual {
        assert(tx.origin == msg.sender);
    }

    function g() public pure virtual {
        f();
    }
}
