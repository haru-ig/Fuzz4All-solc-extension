pragma solidity ^0.8.0;
contract MultipleArguments5_semantics {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments5() public view returns (uint x_r, uint y_r, uint z_r) {
        (x_r, y_r, z_r) = (x, y, z);
        return (x_r, y_r, z_r);
    }
    function multipleArguments5Set(uint _c1, uint _c2, uint _c3) public {
        (x_r, y, z_r) = (x, y, z);
        uint _x = _c1 * _c2 * _c3;
        x = _x;
        if (_c1 == _c2 && _c1!= _c3) {
            y = 0x0;
        } else {
            y = y;
            z = _c1 + _c2 + _c3;
            if (_c1 == 0 && _c2 == 0 && _c3!= _c2) {
                y = 1;
            }
        }
    }
}
