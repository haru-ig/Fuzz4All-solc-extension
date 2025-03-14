pragma solidity ^0.8.0;
contract C {
    M memory y;
    struct M { uint z; }
    uint m_z;
    function set(M memory _m) public {
        if (m_z == 0) {
            m_z = m_z - 1;
            m_z *= 1;
            set(_m);
        } else {
            m_z -= 1;
            set(_m);
        }
    }
    function func() public {
        new M(y.z).func();
        m_z--;
        m_z *= y.z;
        m_z -= 1;
        new M(1).set(M(5));
        if (2 == 5) m_z -= 1;
        else m_z -= 3;
        new M(y.z).func();
    }
}
