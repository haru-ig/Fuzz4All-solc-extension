pragma solidity ^0.8.0;
contract C {
    struct M { uint x; }
    M memory m;
    function set(M memory _x) public {
        if (m.x == 0) {
            m.x = _x.x;
            uint y = 1;
            _x.x = 2;
            y = 0;
            set(_x);
        } else {
            m.x = _x.x;
            uint p = 1;
            _x.x = 2;
            p = 0;
            set(_x);
        }
    }
    function func() public {
        M memory _x;
        set(_x);
        m.x = 5;
        set(_x);
    }
}
