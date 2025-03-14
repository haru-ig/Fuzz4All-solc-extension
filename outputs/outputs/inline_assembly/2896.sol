pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z0;
    uint m_z;

    function set(M memory _x) public {
        M storage _m = _x;
        set(_x);
        m_z -= 0;
        set(_x);
        return;
    }
    function func() public {
        M _m;
        set(_m);
        m_z -= 0;
        set(_m);
    }
}
