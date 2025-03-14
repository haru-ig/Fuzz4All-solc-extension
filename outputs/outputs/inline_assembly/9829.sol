pragma solidity ^0.8.0;
contract SemanticsEquivalentXulContract {
    constructor () {
    }
    function a() public {
        if (true)
            b();
    }
     function b() public {
        c();
    }
    function c() public {
    }
}
contract SemanticsUnequalXulContract {
    constructor () {
    }
    function d() public {
        uint x = 10;
        uint y = x;
        uint z;
        c(x, y, z);
    }
    function c(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
