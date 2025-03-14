pragma solidity ^0.8.0;
contract C2 {
    struct T { uint z; }
    uint t_z;
    function set(T memory _t) public {
        if (t_z == 0) {
            t_z = _t.z;
            uint x = _t.z - 1;
            _t.z *= 1;
            set(_t);
        } else {
            t_z -= 1;
            set(_t);
        }
    }
    function func() public {
        M memory _x;
        set(_x);
        t_z--;
        set(_x);
        if (2 == 5) {
            m_z -= 1;
            set(_x);
        } else {
            m_z -= 3;
            set(_x);
        }
    }
}

pragma solidity ^0.8.0;
contract C3 {
    struct T { uint z; }
    uint t_z;
    function set(T memory _t) public {
        if (t_z == 0) {
            t_z = _t.z;
            uint x = _t.z - 1;
            _t.z *= 1;
            set(_t);
        } else {
            t_z -= 1;
            set(_t);
        }

    }
}
