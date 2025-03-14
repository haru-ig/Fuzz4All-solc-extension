pragma solidity ^0.8.0;
contract BetterCase456 {
    uint value;
    function set(uint x) public {
        value = x;
    }
    function get() public view returns (uint) {
        return value;
    }
}
