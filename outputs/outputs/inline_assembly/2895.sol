pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint m_z0;
    uint m_z;
    mapping(uint => M) storage m_z;
    function set(M memory _m) public {
        set(uint(_m.z), _m);
        m_z[uint(_m.z)] = _m;
        m_z[uint(_m.z)].z -= 0;
        return;
    }
    function func() public {
        M memory _x;
        M memory _y;
        uint _z = uint(_y.z);
        set(_x, _y);
        m_z[_z] = _y;
        m_z[_z].z -= 0,
        set(_x, _y);
    }
}
