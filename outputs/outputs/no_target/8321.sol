pragma solidity ^0.8.0;
uint256 _NEW_VAR_UPDATE = 0;
abstract contract Fail {
    uint256 NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
}

pragma solidity ^0.8.0;

contract New {
    uint256 _NEW_VAR_UPDATE = 0;
    modifier m() {
        _NEW_VAR_UPDATE = NEW_VAR_UPDATE++;
        _;
    }
}

pragma solidity ^0.8.0;
contract NewTest {
    struct NewStruct { uint42 x; int z; uint x; int zz; }
    uint256 NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    uint256 _NEW_VAR_UPDATE = 0;
    NewStruct[] private _array;
    mapping(uint42 => uint256) _a;
    constructor() {
        uint42 x = 1;
        int z = 9;
        uint xz = x + z;
        int x0 = z;
        int zz = 29;
        uint42 y = (xz + x0) * (zz + x);
        uint42 yz = y + zz;
        uint256 x1 = y / zz;
        uint256 x2 = xz % (x - zz);
        uint42 x3 = xz / (z - zz);
    }
    contract New {
        uint256 _NEW_VAR_UPDATE = 0;
        modifier m0() {
            _NEW_VAR_UPDATE = NEW_VAR_UPDATE++;
            _;
        }
        modifier m1() {
            uint256 _NEW_VAR_UPDATE = NEW_VAR_UPDATE++;
            _NEW_VAR_UPDATE = _NEW_VAR_UPDATE + 1;
            _;
        }
    }
    function test() public m0 {
        NewStruct storage s0 = _array[0];
        NewStruct storage s1 = _array[1];
        NewStruct storage s2 = _array[2];
        NewStruct storage s3 = _array[3];
    }
    function test2() public m1 {
        NewStruct memory a;
        NewStruct memory b;
        NewStruct memory c;
        NewStruct memory d;
        s0.z += 10;
        s0.x = _a[0];
        s1.z += 1;
        s1.x = 5;
        s2.z += 1;
        s2.x = 3;
        s3.z += 9;
        s3.x = _a[9];
    }
    function getStruct() public pure returns(NewStruct memory _s) {
        _s.z += 20;
        _s.x = 5;
        _s.zz = 1;
    }
}
