pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z;
    function set(M storage _m) public {
        if (m_z == 0) {
            m_z = _m.z;
            uint x = _m.z - 1;
            _m.z *= 1;
            set(_m);
        } else {
            m_z -= 1;
            set(_m);
        }
    }
    function func() public {
        M storage _x;
        set(_x);
        m_z--;
        set(_x);
        if (2 == 5) {
            m_z -= 1;
            set(_x);
        } else {
            m_z -= 3;
            set(_x);
        }
    }
}
