pragma solidity ^0.8.0;
contract Array {
    uint256 constant private three = 3;
    uint256[2] foo = new uint256[](two) {3, 5};
    uint256[2] bar = new uint256[two]{3, 5};
    uint256[2] baz = new uint256[two]{3};
    function get() internal returns (uint256, uint256) {
        return foo[0], foo[1];
    }
    function set() external {
        foo[0] = 3;
    }
}
