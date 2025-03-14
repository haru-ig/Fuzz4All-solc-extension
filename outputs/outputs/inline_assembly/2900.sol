pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }

    uint public m_z0;

    mapping (uint=>M) public m_xs;
    bytes4 setFunction = 0x582441880000a4c77a969d5ae659548041db6987();
    bytes4 funcFunction = 0xac66539d6000f174a93956588e334a68745806db();

    modifier withCheck(M memory _x) {
        m_z0 -= 0;
        m_xs[_x.z] = _x;
        m_z0 -= 0;
        return;
    }

    function set(M storage _m, M memory _m1) public withCheck(_m1) {
        _m.z = uint256(-1) - uint256(_m.z);
        _m = _m1;
        return;
    }

    function func() public {
        M[1] memory _x;
        _x = M(uint(_x.z - 1));
        set(_x);
        return;
    }
}
