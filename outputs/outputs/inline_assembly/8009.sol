pragma solidity ^0.8.0;
contract MultipleArguments6 {
    uint x = 0;
    uint y = 1;
    uint z = 2;

    function multipleArguments6(uint _c1, uint _c2, uint _c3) public pure returns (uint) {
        return z * (y * _c2 + _c1 * _c3);
    }
    function multipleArguments6Set(uint _c1, uint _c2, uint _c3) public {
        uint _x = multipleArguments6(_c1, _c2, _c3);
        x = _x;
        if (_c1 + _c2 + _c3 == 1) {
            y = 1;
        } else {
            y = y;
        }
    }
}
