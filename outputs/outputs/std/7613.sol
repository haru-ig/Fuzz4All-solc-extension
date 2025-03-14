pragma solidity ^0.8.0;
contract BetterCase457 {
    uint value;
    uint modifier change(uint x) {
        value = x;
        _;
    }
    function set(uint x) public change(x) {}
    function get() public view returns (uint) {
        return value;
    }
}
