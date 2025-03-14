pragma solidity ^0.8.0;
library L {
    struct M { uint z; }
    uint internal z0;
    uint internal z;
    function set(M memory _m) public {
        set(_m);
        _m.z -= 0;
        set(_m);
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        _x.z -= 0;
        set(_x);
    }
}
