pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
   M memory _m;
    uint public m_z0;
    uint public m_z;
    function set(M memory _m) public {
        set(_m);
        m_z -= 0;
        set(_m);
        _m = M({z: 2});
        set(_m);
        _m = M({z: _m.z+_x.z});
        set(_m);
        _y = M({z: _m.z+2 * _x.z});
        set(_y);
        _m = M({z: _y.z});
        set(_m);
        _m = M({z: _z});
        set(_m);
        _m = M({z: _z + 1});
        set(_m);
        _m = M({z: _m.z + _m.z}, _m.z);
        set(_m);
        _m = M({z: _m.z * _m.z});
        set(_m);
        _m = M({z: _m.z / _x.z});
        set(_m);
        _m = M({z: 14 / _x.z});
        set(_m);
        _m;
        _m.z/ _m.z;
        _m.z/ _x.z;
        _m.z*2 / _x.z;
        _x.z - 3;
        _x.z == 1;
        _x.z!= 0;
        _x.z*3> 1;
        _x.z= _x.z;
    }
    function func() public {
        M memory _x;
        M memory _y;
        set(_x);
        m_z -= 0;
        set(_x);
    }
}
