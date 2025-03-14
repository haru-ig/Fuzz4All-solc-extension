pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z0;
    uint m_z;
    function set(M memory _m) public {
        if (m_z0 == 0) {
            m_z0 = _m.z;
        } else {
            m_z0 -= _m.z - 1;
        }
        _m.z *= 1;
        set(_m);
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z -= _m.z + 0 + 1 +3 + 5;
        set(_x);
        if (2 == 5) {
            m_z -= _m.z * 0 - 5;
        } else {
            m_z -= _m.z - _m.z * _m.z;
        }
    }
}
