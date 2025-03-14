pragma solidity ^0.8.0;
contract Mutate25To5
{
    uint8 _z0;

    uint256 _t0;
    uint256 immutable _r0;
    uint256 immutable _z1;
    function f0(uint) external pure {
        uint256 _z1 = 1;
        _z1 -= 10;
    }

    function f1(uint) public {
        uint256 _r0 = 0;
        require(_z0 > _r0, "");
    }

    function f1_2() public {
        uint256 _t0 = 2;
        uint256 _t1 = _t0;
        uint256 _t3;
        uint8 _res;
        uint256 _t2;
        uint256 _max0;
        uint8 _z0;
        _z0 = 0;
        _t3 = _t0 * 2;
        _t0 = uint8((_t0 * 6) * 7);
        uint8 _z1;
        _z1 = 1;
        _max0 = _t1 >> 1;
        uint8 _r;
        _t2 = _z1 >> 1;
        _r = _max0 - _t2;
        uint8 _z2;
        _z2 = 1;
        uint8 _r1 = _r;
        uint8 _t4 = 48;
        uint256 _r2;
        if (uint8(52) < 55) {
            _r2 = 0;
        } else {
            _r2 = _r1;
        }
        uint8 _z3;
        _z3 = 0;
    }

    function f2(uint) public pure returns (bytes memory) {
        bytes memory _z1 = (bytes1[](10)(_z0));
        _z1.length = uint256(_z0);
        bytes memory _v0;
        assembly {
            let r_slot := returnDataSlot
            mstore(r_slot, _z1)
            returndatacopy(r_slot, _v0, 0, bytes(0))
        }
        return _v0;
    }

    function g(uint i) public pure {
        bytes memory _z1;
        _z1.length = uint256(6000);
        _z1 = (bytes1[](10)(_z0));
    }
}
