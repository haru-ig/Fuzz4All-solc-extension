pragma solidity ^0.8.0;
library A {
    function f() public pure {
        assert (1 < 2);
        uint _;
        {uint[2] b;b[0] = 1;}
        while (false) {
            uint a = 0;
        }
        uint[2] _p1;
        uint _e1;
        assembly {_p1; _e1}
        uint _ = _p1[0];
        uint _ = _e1;
        uint _ = a;
    }
}
