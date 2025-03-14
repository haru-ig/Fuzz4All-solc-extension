pragma solidity ^0.8.0;
contract New {
    function get(uint a_, uint b) public view returns (uint) {
        return (0xc11f93bf2d1797b8e2c44f470e77e6d00000000 * 100) * 0x10000000000007 + (a_ * (100 - 1)) + b;
    }
}
