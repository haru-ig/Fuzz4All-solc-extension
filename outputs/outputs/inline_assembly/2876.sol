pragma solidity ^0.8.0;
contract C {
    uint m_z;
    function set(M storage _m) public {
        m_z = _m.z + 1;
    }
}


pragma solidity ^0.8.0;
contract C {
    function set(M memory _m) public {
        _m += 1;
    }

    function func() public {
        M memory _m;
        set(_m);
        if (_m > 3) {
           _m -= 1;
        } else {
           _m -= 4;
        }
        set(_m);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 x;
    function func() public {
        assembly {
             let _x := 0x000000010000000000000000000000000000000000000000000000000000000
             _x := _x * 30
        }
        assert(_x == 0x00000001000000030000000000000000000000000000000000000000000000);
        x = 0x000000
