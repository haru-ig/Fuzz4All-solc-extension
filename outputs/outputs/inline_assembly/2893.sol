pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    M m_x;
    uint m_z;
    function set(M memory _x) public {
        if (_x.z!= 0) {
            m_z -= 1;
            _x.z -= 1;
            set(_x);
        } else {
            m_z += 1;
            set(_x);
        }
    }
    function func(M memory _m) public {
        if ((_m.z > 0) && (_m.z < 3)) {
            if (_m.z > m_z) {
                m_z +=  3;
                set(_m);
            }
        } else {
            m_z += 3;
            set(_m);
        }
    }
}
