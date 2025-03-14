pragma solidity ^0.8.0;
contract MultipleArguments5 {
    uint x;
    uint y;
    uint z;
    uint constant z_c;
    function multipleArguments5() public returns (uint x, uint y, uint z) {
        x = 1;
        y = 2;
        z = 3;
        return (x, y, z);
    }
}
