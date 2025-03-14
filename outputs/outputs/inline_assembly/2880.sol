pragma solidity ^0.8.0;
contract C {
    uint public m_z;
    function set(uint _z) public {
        if (m_z == 0) {
            m_z = _z;
            uint x = _z - 1;
            _z *= 1;
            set(_z);
        } else {
            m_z -= 1;
            set(_z);
        }
    }
    function func() public {
        uint _x = 5;
        set(_x);
        m_z--;
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

    uint public m_z;

    function func() public {
        m_z -= 1;
        m_z -= 3;
        m_z -= 1;
        m_z -= 3;
        m_z -= 1;
    }

    function set(uint _z) public {
        m_z = _z;
        m_z -= 1;
        m_z -= 3;
        m_z -= 1;
    }<fim_middle>}
