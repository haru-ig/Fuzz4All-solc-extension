pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z;
    function set(M memory _m) public {
        set(_m);
        uint _z = m_z + 1;
        _m.z *= 1;
        set(_m);
        _m.z += 1;
        set(_m);
        uint x = 9;
        _m.z *= m_z;
        bool a = _m;
        _m.z -= 1;
        bool b = _m;
        m_z += 1;
        m_z -= 1;
        m_z += 1;
        a = _m;
        m_z -= 3;
        uint y = m_z / 3;
        m_z *= m_z;
        y = a;
        uint z = _m.z + x / 3;
    }
}
