pragma solidity ^0.8.0;
contract previousStorage {
    uint public b = 0;
    function set(uint _value) public {
        b = _value;
    }
    function get() public view returns (uint) {
        return b;
    }
}
