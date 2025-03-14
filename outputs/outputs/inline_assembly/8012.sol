pragma solidity ^0.8.0;
contract MultipleArguments5 {
    uint x = 0;
    uint y = 0x0;
    uint z = 2;

    constructor () {
        x = y;
        if (x == 0) {
            y = 0x0;
        } else {
            uint _x = 1;
            x = _x;
        }
        if (y == 0) {
            y = 1;
        }
        z = x + y + 1;
    }

    function multipleArguments14() public view returns (uint, uint, uint) {
        return (x, y, z);
    }
}
