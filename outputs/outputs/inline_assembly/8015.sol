pragma solidity ^0.8.0;
contract MultipleArguments7 {
    uint x = 1;
    uint y = 0x0;
    uint z = 2;
    function multipleArguments7() public view returns (uint, uint, uint) {
        return (x, y ^ 2, z);
    }
    function multipleArguments7Set(uint _c1, uint _c2, uint _c3) public {
        uint _x = _c1 * _c2 * _c3;
        x = _x;
        if (_c1 == 0 && _c2 == _c3) {
            y = 0x0;
        } else {
            y = y;
            z = _c1 + _c2 + _c3;
            if (_c1 == 0 && _c3 == _c2) {


                y = 1;
            }
        }
    }
}
