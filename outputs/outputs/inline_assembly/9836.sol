pragma solidity ^0.8.0;
contract SemanticsEquivalentYulMutantContract {
    constructor () {
    }
    function a() public {
    uint x;
        uint y = x;
        uint z;
        d(x, y, z);
    }
     function b() public {
        uint a;
        d(a, a, a);
    }
    function d(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
contract SemanticsUnequalYulMutantContract {
    constructor () {
    }
    function d() public {
        uint x = 10;
        uint y = x;
        uint z;
        d(x, y, z);
    }
    function d(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
