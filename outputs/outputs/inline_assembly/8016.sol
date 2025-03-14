pragma solidity ^0.8.0;
contract MultipleArguments6 {
    uint x = 1;
    uint y = 0x0;
    uint z = 2;
    function multipleArguments6() public view returns (uint, uint, uint) {
        return (x, y ^ 2, z);
    }
    function multipleArguments6Set(uint _x, uint _y, uint _z) public {
        x = _x;
        y = _y;
        z = _z;
    }
}
