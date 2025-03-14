pragma solidity ^0.8.0;
contract MultipleArguments6 {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments6() public view returns (uint) {
        return (x + y + z);
    }
    function multipleArguments6Set(uint _c) public {
        uint _x = _c * _y;
        x = _x;
        if (_c == 0) {
            y = 0;
        }
    }
}
contract MultipleArguments7 {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments7() public view returns (uint) {
        return (x + y + z);
    }
    function multipleArguments7Set(uint _c1, uint _c2, uint _c3) public {
        uint _x = _c1 * _c2 * _c3;
        x = _x;
        if (_c1 == 0) {
            y = _y * _z;
            if (_c2 == _c3) {
                if (_c2 == 0) {
                    y = 0;
                }
            }
        }
    }
}
