pragma solidity ^0.8.0;
contract MultipleArguments4 {
    function multipleArguments4(uint x, uint y, uint z) public view returns (uint x, uint y, uint z) {
        x = y = z = 1;
        return (x, y, z);
    }
}
