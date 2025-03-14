pragma solidity ^0.8.0;
contract MultipleArguments4 {
    uint x;
    uint y;
    uint z;
    function multipleArguments4() public returns (uint x, uint y, uint z) {
        x = y = z = 1;
        return (x, y, z);
    }
}
