pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z0;
    uint m_z;
    function set(M memory _m) public {
        if (m_z0 == 0) {
            m_z0 = _m.z;
            uint x = _m.z - 1;
            _m.z *= 1;
            set(_m);
        } else {
            m_z0 -= 1;
            set(_m);
        }
        m_z -= 1;
        set(_m);
    }
    function func() public {
        M memory _x;
        set(_x);
    }
}
