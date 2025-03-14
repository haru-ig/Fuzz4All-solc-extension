pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    M memory m_x;
    M memory m_z1;
    function set() public {
        m_z1.z -= 0;
        set();
        m_x.z -= 0;
        set();
        return;
    }
    function func() public {
        set();
        m_x.z -= 0;
    }
}
