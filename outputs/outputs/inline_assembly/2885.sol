pragma solidity ^0.8.0;
contract C {
    uint a;
    address b;
    struct M { uint z; }
    constructor(uint _a, address _b) {
        a = _a;
        b = _b;
    }
    function set(M storage _m) public {
        if (a == 0 || b!= address(0)) {
            a = 0;
            b = address(0);
            _m.z = 0;
            uint x = _m.z - a;
            _m.z *= a*1;
            set(_m);
        } else if (m_z == 0) {
            a += 5;
            b -= a;
            _m.z = a;
            uint y = _m.z - (a >> 1)*a;
            _m.z *= 1;
            set(_m);
        } else {
            b += 5;
            m_z -= 1;
            M storage _temp_storage = _m;
            _m = M(_temp_storage.z - 1, b);
            set(_m);
        }
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z--;
        set(_x);
        if (2 == 5) {
            a += 5;
            b += 5;
            m_z -= 2;
            M storage _temp_storage = _x;
            _x = M(_x.z - 0.3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
