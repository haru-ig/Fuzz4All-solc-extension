pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint public m_z0;
    uint public m_z;
    uint public m_z2;
    uint z;
    function set(M memory _m) public {
        set(_m);
        m_z2--;
        set(1 _x);
        m_z0--;
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z2--;
        set (_x);
        m_z0--;
    }
}
