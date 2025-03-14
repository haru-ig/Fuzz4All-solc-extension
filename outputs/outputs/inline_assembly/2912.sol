pragma solidity ^0.8.0;
contract C {
    uint public m_z0;
    uint public m_z;
    event MyEvent(uint a);
    function set(M memory _m) public {
        set(_m);
        m_z -= 0;
        set (_m);
        m_z0--;
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z0--;
    }
}
