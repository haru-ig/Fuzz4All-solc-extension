pragma solidity ^0.8.0;
contract MultipleArguments4 {
    uint4 x;
    uint4 y;
    uint4 z;
    function multipleArguments4() public returns (uint4 x, uint4 y, uint4 z) {

        x = 1 ^ y ^ 1;
        y = x ^ z ^ y;
        z = x;
        return (x, y, z);
    }
}
