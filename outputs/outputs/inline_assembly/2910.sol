pragma solidity ^0.8.0;
contract C {
    struct M { uint z;
    }
    uint public m_z = m;
    uint public m;

    uint public m_z2;
    uint public m_z3;

    function f() public {
        M memory _x;
        m_z = _x.z;
        m_z3 = m_z;
        m = _x.z + m;
        m_z2 = 0;
    }
    function g() public {
        M memory  _x = m;
    }
}
