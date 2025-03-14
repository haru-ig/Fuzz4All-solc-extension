pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint public m_z0;
    uint public m_z0prime;
    uint public m_z;
    uint public m_z2;
    uint z;
    function set(M memory _m) public {
        set(_m);
        m_z2 -= 0;
        m_z0 = 6;
        m_z0prime = _m.z;
        m_z0 = 9;
        set (_m);
        m_z = 19;
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z0prime = _x.z;
        m_z0prime = 6;
        m_z0 = 3;
        m_z = 4;
        m_z0prime = _x.z;
    }
}
