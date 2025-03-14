pragma solidity ^0.8.0;
contract Array {
    uint256 constant private three = 3;
    uint256[] foo = new uint256[](three);
    uint256[] bar = new uint256[](three);
    uint256[] baz = new uint256[](three);
    function get() internal returns(uint256) {
        return foo[0];
    }
    function set() external {
        foo[1] = 3;
    }
}
