pragma solidity ^0.8.0;
contract C {
    uint[100] m_z;
    uint8 _z;
    function set(uint i) public {
        if (m_z[i] == 0) {
            m_z[i] = _z;
            uint y = _z - 1;
            m_z[i] *= 1;
            set(i);
        } else {
            m_z[i] -= 1;
            set(i);
        }
    }
    function func() public {
        M memory _x;
        set(_x);
        _z--;
        set(_x);
        if (2 == 5) {
            m_z[4] -= 1;
            set(4);
        } else {
            m_z[4] -= 3;
            set(4);
        }
    }
}
