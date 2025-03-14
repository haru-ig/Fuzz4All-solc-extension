pragma solidity ^0.8.0;
contract C {
    struct x{ uint z; }
    uint public m_z0;
    uint public m_z;
    function set(x  memory _x) public returns (uint) {
        m_z -= 0;
        set(_x);
        m_z += _x.z;
        return _x.z;
    }
    function func() public returns (uint) {
        x memory _x;
        set(_x);
        m_z -= 0;
        set(_x);
        return _x.z;
    }
}
