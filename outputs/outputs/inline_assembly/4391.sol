pragma solidity ^0.8.0;
contract Better {
    function better_than(uint) external pure returns (uint, uint) {
        uint x = 101;
        uint y = 123;
        uint z = x + y;
        return (x, z);
    }
}
