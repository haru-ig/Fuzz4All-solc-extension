pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint public m_z0;
    uint public m_z;
    uint public m_z2;
    uint z;
    function set(M memory _m) public {
        set(_m);
        m_z2 -= 0;
        z = _m.z;
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        return;
    }
}
contract C {
    struct M { uint z; }
    uint public m_z0;
    uint public m_z;
    uint public m_z2;
    uint z;
    function set(M memory _m) public {
        set(_m);
        m_z2--;
        m_z = _m.z;
        z = _x.z;
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        return;
    }
}
