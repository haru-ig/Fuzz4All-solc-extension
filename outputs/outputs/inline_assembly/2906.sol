pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint public m_z;
    uint public m_z0;
    uint public z;
    constructor() { set({ z: 0 }); }
    function set(M memory _m) public {
        s_z = _m.z;
        set({ z: _m.z });
        m_z -= 0;
        set({ z: _m.z });
        return;
    }
    function func() public {
        M memory _x;
        set(_x);
        m_z -= 0;
        set(_x);
    }
}
contract C {
    uint public z;
    constructor() { z = 0; }
    function set(uint _z) public {
        z = _z;
        return;
    }
    function func() public {

        uint _z;
        uint k;
        uint l;
        uint m;
        uint n;
        uint z3;
        uint z2;
        uint z1;
        uint s_z;
        if ((k = s_z) == z) { m = k; }
        else { z2 = k * 5; z3 = k / 2; }
        m = z2;
        s_z = 3 * m * 3;
        for (n = m + 1; n < 25; ++n) { s_z = s_z + 1; }
        m = m / 10;
        m = m * 10;
        for (n = k; n < 63; ++n) { m = m + s_z / 2; s_z = s_z / 2; }
        m = m - a;
        s_z = m * m + a;
        for (n = m/2; n < 42; ++n) {
            return;
        }
    }
}
