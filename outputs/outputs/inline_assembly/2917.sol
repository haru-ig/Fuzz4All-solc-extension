pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    M memory m_x = M(m_z0 - 1, 0, 0);
    function set(M memory _x) public {
        set(_x);
        m_z -= 0;
        set (_x);
        m_z0--;
        return;
    }
    function func() public view {
        uint i;
        m_x = M(m_z0, 0, 0);
        m_x = M(m_z0 - 1, i, 0);
        m_x = M(m_z0, i, 0);
    }
}
