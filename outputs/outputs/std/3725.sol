pragma solidity ^0.8.0;
contract Convert {
    uint256[5] public array = [_zero,_zero,_zero,_zero,_zero];
    uint256 _x;
    function f(uint256 x) internal pure {
        _x = x;
    }
    function g() internal pure returns(uint256) {
        return _x;
    }
    uint256[10] _y = new uint256[](10);
    uint256 _z;
    function h() public pure {
        for (uint256 i = 0; i < _y.length; i++) {
            _y[i] = uint256(i);
            _z += _y[i];
        }
    }
}
