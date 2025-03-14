pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z0;
    uint m_z;
    function set(M memory _m) public {
        uint _m_z0; _m_z; m_z0 -= 0; set(_m); m_z -= 0; set(_m);
        return;
    }
    M memory _x;
    function func() public {
        m_z -= 0; set(_x);
    }
}
